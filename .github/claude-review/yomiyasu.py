#!/usr/bin/env python3
# Claudeに許すyomiyasuの呼び出し口
# yomiyasuは作業フォルダの外のファイルも読めるので、読み書きするファイルをwork/の下に限ってから実行する
import os
import sys
from pathlib import Path

ROOT = Path.cwd()
WORK = (ROOT / 'work').resolve()
SCRIPTS = ROOT / '.ci' / 'yomiyasu' / 'skills' / 'yomiyasu' / 'scripts'

# ツールごとに、受け付けるサブコマンド・ファイルを取るオプション・値を取るオプション・値を取らないオプション
TOOLS = {
    'lint': {
        'script': 'yomiyasu_lint.py',
        'subcommands': set(),
        'paths': set(),
        'values': {'--doc-type', '--reader'},
        'flags': {'--json'},
        'positional': 1,
    },
    'check': {
        'script': 'yomiyasu_check.py',
        'subcommands': {'run', 'verify'},
        'paths': {'--source', '--final', '--material'},
        'values': {'--doc-type', '--stance', '--run-id', '--reader'},
        'flags': {'--fact-gaps', '--json'},
        'positional': 0,
    },
}


def fail(message):
    print('yomiyasu.py: ' + message, file=sys.stderr)
    sys.exit(2)


def check_path(value):
    path = (ROOT / value).resolve()
    # 作業フォルダの外のファイル（/procにある環境変数など）を読ませないよう、work/の下だけを許す
    if WORK not in path.parents:
        fail('only files under work/ are allowed: ' + value)


def main(argv):
    # 1つ目の引数でlintとcheckのどちらを使うかを選ぶ
    if len(argv) == 0 or argv[0] not in TOOLS:
        fail('usage: yomiyasu.py (lint|check) ...')
    tool = TOOLS[argv[0]]
    args = argv[1:]
    index = 0
    # checkはサブコマンドを先頭に求める
    if tool['subcommands']:
        if len(args) == 0 or args[0] not in tool['subcommands']:
            fail('check needs one of: ' + ', '.join(sorted(tool['subcommands'])))
        index = 1
    positional = 0
    # 引数を1つずつ調べ、許していないオプションと、work/の外のファイルを拒む
    while index < len(args):
        arg = args[index]
        if arg.startswith('--'):
            name, has_value, value = arg.partition('=')
            # 値を「=」で付けなかったオプションは、次の引数を値として読む
            if (name in tool['paths'] or name in tool['values']) and not has_value:
                index += 1
                # 値がないまま引数が終わったら拒む
                if index >= len(args):
                    fail('missing value for ' + name)
                value = args[index]
            # ファイルを取るオプションはwork/の下か確かめ、値と値を取らないオプションはそのまま渡す
            if name in tool['paths']:
                check_path(value)
            elif name in tool['values'] or (name in tool['flags'] and not has_value):
                pass
            else:
                fail('option not allowed: ' + arg)
        else:
            # 標準入力を読ませる「-」と短いオプションは使わせない
            if arg.startswith('-'):
                fail('reading from stdin or short options are not allowed: ' + arg)
            check_path(arg)
            positional += 1
        index += 1
    # lintは検査するファイルを1つだけ受け取る
    if positional != tool['positional']:
        fail('expected {} file argument(s)'.format(tool['positional']))
    # 標準入力を空にしてから、固定したyomiyasuのスクリプトへ処理を渡す
    devnull = os.open(os.devnull, os.O_RDONLY)
    os.dup2(devnull, 0)
    script = str(SCRIPTS / tool['script'])
    os.execv(sys.executable, [sys.executable, script, *args])


if __name__ == '__main__':
    main(sys.argv[1:])
