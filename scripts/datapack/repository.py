"""Check Asset's own datapack rules, IDs and artifact registrations, across the working copy.

    <Python 3.9以上> scripts/datapack/repository.py [<作業コピー>] [--json]

Rules, which the working copy satisfies as of this check's introduction:
  - an ID is used once per category (artifact, effect, mob, object); most IDs have
    4 digits, but some mobs use 5, such as `10000.sandbag1`
  - `Asset/data/asset/tags/functions/artifact/give.json` lists each artifact's
    `give/1.trigger` once
  - each entry point of an artifact, `<名前>/1.trigger` such as `trigger/`, `using_item/` or
    `dis_equip/`, is registered in an artifact function tag; `give/1.trigger` is covered by
    the rule above
A misspelled entry in these tags shows up as a missing registration. Whether a tag refers
to an existing function is not checked here.

The working copy defaults to the repository holding this script. Reading only. Python 3.9
or newer, with the standard library. Exit status is 0 without findings, 1 with findings, and 2 when
a category directory is missing or a file cannot be read.

DevSpace's `scripts/datapack/check.py` finds this file by its name and, by default, runs
the version in the merge base with the default branch, copied out of the working copy, as
`python -I -X utf8 <file> <作業コピー> --json`; so it has to stay self-contained, with the standard
library only. It reads
`{"findings": {"<path>": ["<message>", ...]}}`, which lists only paths with at least one
message, and expects exit status 1 exactly when there are findings. Keep that contract
when changing the rules, and change the layout here when the tags or directories move.
"""
import argparse
import json
import re
import sys
from pathlib import Path

FUNCTIONS = 'Asset/data/asset/functions'
ARTIFACT_TAGS = 'Asset/data/asset/tags/functions/artifact'
CATEGORIES = ('artifact', 'effect', 'mob', 'object')
ID_DIRECTORY = re.compile(r'^(\d{4,})\.')
ARTIFACT_ENTRY = re.compile(r'^asset:artifact/(\d{4,}\.[^/]+)/')


def main(argv=None):
    parser = argparse.ArgumentParser(description='AssetのID重複と神器の関数タグの登録を検査する')
    parser.add_argument('workcopy', nargs='?', default=str(Path(__file__).resolve().parents[2]),
                        help='Assetの作業コピー（既定はこのスクリプトがあるrepo）')
    parser.add_argument('--json', action='store_true', help='結果をJSONで出す')
    arguments = parser.parse_args(argv)
    # DevSpace reads the JSON as UTF-8, also where the console encoding is cp932.
    for stream in (sys.stdout, sys.stderr):
        if hasattr(stream, 'reconfigure'):
            stream.reconfigure(encoding='utf-8')
    root = Path(arguments.workcopy).resolve()
    # A missing category would otherwise read as one without duplicates.
    missing = [category for category in CATEGORIES if not (root / FUNCTIONS / category).is_dir()]
    if missing:
        print(f'{root} にAssetの {FUNCTIONS}/ の ' + '、'.join(missing) + ' がない', file=sys.stderr)
        return 2
    try:
        found = findings(root)
    except OSError as error:
        print(f'ファイルを読めず、検査を続けられない: {error}', file=sys.stderr)
        return 2

    if arguments.json:
        print(json.dumps({'findings': found}, ensure_ascii=False))
    elif found:
        print('## 指摘\n')
        for path, messages in sorted(found.items()):
            print(f'- `{path}`')
            for message in messages:
                print(f'  - {message}')
    else:
        print('## 指摘なし')
    return 1 if found else 0


def findings(root):
    found = {}
    functions = root / FUNCTIONS
    for category in CATEGORIES:
        owners = {}
        for directory in subdirectories(functions / category):
            if match := ID_DIRECTORY.match(directory.name):
                owners.setdefault(match.group(1), []).append(directory.name)
        for number, names in owners.items():
            if len(names) > 1:
                found.setdefault(f'{FUNCTIONS}/{category}', []).append(
                    f'ID {number} を複数の{category}が使っている: ' + '、'.join(f'`{name}`' for name in names))

    artifacts = [path.name for path in subdirectories(functions / 'artifact')
                 if ID_DIRECTORY.match(path.name)]
    tags = {}
    for tag in sorted((root / ARTIFACT_TAGS).rglob('*.json')):
        relative = tag.relative_to(root).as_posix()
        try:
            content = json.loads(tag.read_text(encoding='utf-8'))
        except ValueError:
            found.setdefault(relative, []).append('JSONとして読めない')
            continue
        values = content.get('values') if isinstance(content, dict) else None
        if not isinstance(values, list):
            found.setdefault(relative, []).append('`values` の配列がない')
            continue
        tags[relative] = [value if isinstance(value, str) else str(value.get('id', ''))
                          for value in values if isinstance(value, (str, dict))]

    give = f'{ARTIFACT_TAGS}/give.json'
    listed = tags.get(give, [])
    for name in artifacts:
        entry = f'asset:artifact/{name}/give/1.trigger'
        count = listed.count(entry)
        if count != 1:
            found.setdefault(give, []).append(
                f'`{entry}` が{"ない" if count == 0 else f"{count}回ある"}')
    expected = {f'asset:artifact/{name}/give/1.trigger' for name in artifacts}
    for entry in sorted(set(listed) - expected):
        match = ARTIFACT_ENTRY.match(entry)
        problem = ('はその神器の `give/1.trigger` ではない' if match and match.group(1) in artifacts
                   else 'に対応する神器のディレクトリがない')
        found.setdefault(give, []).append(f'`{entry}` {problem}')

    registered = {value for values in tags.values() for value in values}
    for name in artifacts:
        # Entry points are named by what starts them, as when a long press moved from
        # trigger/ to using_item/; every one of them is reached only through a tag.
        for trigger in sorted((functions / 'artifact' / name).glob('*/1.trigger.mcfunction')):
            entry = trigger.parent.name
            if entry != 'give' and f'asset:artifact/{name}/{entry}/1.trigger' not in registered:
                found.setdefault(trigger.relative_to(root).as_posix(), []).append(
                    '神器の関数タグ（tags/functions/artifact/）に登録されていない')
    return found


def subdirectories(directory):
    return sorted(path for path in directory.iterdir() if path.is_dir()) if directory.is_dir() else []


if __name__ == '__main__':
    raise SystemExit(main())
