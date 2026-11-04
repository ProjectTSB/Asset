"""Checks that the repository check finds duplicate IDs and missing artifact registrations."""
import contextlib
import importlib.util
import io
import json
from pathlib import Path
import shutil
import sys
import tempfile
import unittest

SCRIPT = Path(__file__).resolve().parents[2] / 'scripts/datapack/repository.py'
# Loading the script must not leave a __pycache__ in the working copy.
sys.dont_write_bytecode = True
spec = importlib.util.spec_from_file_location('repository', SCRIPT)
repository = importlib.util.module_from_spec(spec)
sys.modules['repository'] = repository
spec.loader.exec_module(repository)

FUNCTIONS = repository.FUNCTIONS
TAGS = repository.ARTIFACT_TAGS


class Workcopy:
    """A throwaway Asset working copy with one registered artifact."""

    def __init__(self, stack):
        self.root = Path(stack.enter_context(tempfile.TemporaryDirectory()))
        for category in ('effect', 'mob', 'object'):
            (self.root / FUNCTIONS / category).mkdir(parents=True)
        self.artifact('0001.first')
        self.tag('give', ['asset:artifact/0001.first/give/1.trigger'])
        self.tag('use_item', ['asset:artifact/0001.first/trigger/1.trigger'])

    def write(self, relative, text):
        path = self.root / relative
        path.parent.mkdir(parents=True, exist_ok=True)
        path.write_text(text, encoding='utf-8')

    def artifact(self, name):
        self.write(f'{FUNCTIONS}/artifact/{name}/give/1.trigger.mcfunction', 'say give\n')
        self.write(f'{FUNCTIONS}/artifact/{name}/trigger/1.trigger.mcfunction', 'say trigger\n')

    def tag(self, name, values):
        self.write(f'{TAGS}/{name}.json', json.dumps({'values': values}))


class RepositoryTest(unittest.TestCase):
    def setUp(self):
        self.stack = contextlib.ExitStack()
        self.addCleanup(self.stack.close)
        self.copy = Workcopy(self.stack)

    def run_check(self, *arguments):
        output = io.StringIO()
        with contextlib.redirect_stdout(output), contextlib.redirect_stderr(output):
            code = repository.main([str(self.copy.root), *arguments])
        return code, output.getvalue()

    def test_a_clean_working_copy_has_no_findings(self):
        self.assertEqual(self.run_check(), (0, '## 指摘なし\n'))
        self.assertEqual(self.run_check('--json'), (0, '{"findings": {}}\n'))

    def test_duplicate_ids_and_missing_registrations_are_found(self):
        self.copy.artifact('0001.second')
        self.copy.artifact('0002.unlisted')
        self.copy.write(f'{FUNCTIONS}/mob/0001.mob/register.mcfunction', 'say mob\n')
        self.copy.write(f'{FUNCTIONS}/mob/10000.big/register.mcfunction', 'say mob\n')
        self.copy.write(f'{FUNCTIONS}/mob/10000.other/register.mcfunction', 'say mob\n')
        self.copy.tag('give', ['asset:artifact/0001.first/give/1.trigger',
                               'asset:artifact/0001.first/give/1.trigger',
                               'asset:artifact/0001.second/give/1.trigger',
                               'asset:artifact/0001.second/give/1.triger',
                               'asset:artifact/0003.gone/give/1.trigger'])
        self.copy.tag('use_item', ['asset:artifact/0001.first/trigger/1.trigger',
                                   'asset:artifact/0001.second/trigger/1.trigger',
                                   {'id': 'asset:artifact/0009.typo/trigger/1.trigger', 'required': False}])
        self.copy.write(f'{TAGS}/broken.json', '[]')
        code, output = self.run_check()
        self.assertEqual(code, 1)
        self.assertIn('ID 0001 を複数のartifactが使っている: `0001.first`、`0001.second`', output)
        self.assertIn('ID 10000 を複数のmobが使っている', output)
        self.assertNotIn('ID 0001 を複数のmob', output)
        self.assertIn('`asset:artifact/0001.first/give/1.trigger` が2回ある', output)
        self.assertIn('`asset:artifact/0002.unlisted/give/1.trigger` がない', output)
        self.assertIn('`asset:artifact/0003.gone/give/1.trigger` に対応する神器のディレクトリがない', output)
        self.assertIn('`asset:artifact/0001.second/give/1.triger` はその神器の `give/1.trigger` ではない', output)
        self.assertIn('0002.unlisted/trigger/1.trigger.mcfunction`\n  - 神器の関数タグ', output)
        self.assertNotIn('give/1.trigger.mcfunction`\n  - 神器の関数タグ', output)
        self.assertIn('broken.json`\n  - `values` の配列がない', output)
        # Whether a tag names an existing function is not checked here.
        self.assertNotIn('0009.typo', output)

    def test_every_entry_point_must_be_registered(self):
        self.copy.write(f'{FUNCTIONS}/artifact/0001.first/using_item/1.trigger.mcfunction', 'say use\n')
        self.copy.write(f'{FUNCTIONS}/artifact/0001.first/dis_equip/1.trigger.mcfunction', 'say off\n')
        self.copy.tag('dis_equip', ['asset:artifact/0001.first/dis_equip/1.trigger'])
        code, output = self.run_check()
        self.assertEqual(code, 1)
        self.assertIn('0001.first/using_item/1.trigger.mcfunction`\n  - 神器の関数タグ', output)
        self.assertNotIn('dis_equip/1.trigger.mcfunction`\n  - 神器の関数タグ', output)
        self.copy.tag('using_item/2s', ['asset:artifact/0001.first/using_item/1.trigger'])
        self.assertEqual(self.run_check()[0], 0)

    def test_json_output_keeps_the_shape_devspace_reads(self):
        self.copy.artifact('0002.unlisted')
        code, output = self.run_check('--json')
        self.assertEqual(code, 1)
        found = json.loads(output)['findings']
        self.assertEqual(sorted(found), [f'{FUNCTIONS}/artifact/0002.unlisted/trigger/1.trigger.mcfunction',
                                         f'{TAGS}/give.json'])
        self.assertTrue(all(isinstance(message, str) for messages in found.values() for message in messages))

    def test_a_directory_without_asset_is_refused(self):
        with tempfile.TemporaryDirectory() as empty:
            output = io.StringIO()
            with contextlib.redirect_stderr(output):
                self.assertEqual(repository.main([empty]), 2)
            self.assertIn('Assetの', output.getvalue())

    def test_a_missing_category_stops_instead_of_finding_nothing(self):
        for category in ('effect', 'mob', 'object'):
            self.copy.write(f'{FUNCTIONS}/{category}/0001.x/register.mcfunction', 'say x\n')
        self.assertEqual(self.run_check()[0], 0)
        shutil.rmtree(self.copy.root / FUNCTIONS / 'mob')
        code, output = self.run_check()
        self.assertEqual(code, 2)
        self.assertIn('mob がない', output)


if __name__ == '__main__':
    unittest.main()
