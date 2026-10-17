"""神器921の粒子の座標表を生成する

目的
    起爆時に end_rod を全方位へ放つ方向と、範囲の目印を描く円周上の位置を計算し、mcfunction に書き出す
入力
    このファイルの方向の数・速さ・目印の数・半径・dust の指定
出力
    Asset/data/asset/functions/artifact/0921.celestial_star/trigger/detonate/vfx/shockwave.mcfunction
    Asset/data/asset/functions/effect/0402.celestial_star/tick/vfx/ring_markers.mcfunction
    再実行すると2ファイルを上書きする
    ほかのファイルは変更しない
実行
    python3 scripts/artifact/0921.celestial_star/generate_particle_tables.py
    repo の場所はこのファイルの位置から求めるので、実行ディレクトリは問わない
依存
    Python 3 の標準ライブラリだけを使う
"""
import math
from pathlib import Path

REPO = Path(__file__).resolve().parents[3]
FUNCTIONS = REPO / 'Asset/data/asset/functions'
SOURCE_NOTE = '# scripts/artifact/0921.celestial_star/generate_particle_tables.py で生成する'

# 起爆時の end_rod: 方向の数と速さ
SHOCKWAVE_DIRECTIONS, SHOCKWAVE_SPEED = 60, '1.3'

# 範囲の目印: 半径・間隔 (度)・dust の色と大きさ
RING_RADIUS, RING_STEP, RING_DUST = 10, 10, '1 0.85 0.25 0.7'


def fmt(v):
    s = ('%.4f' % v).rstrip('0').rstrip('.')
    return '0' if s in ('-0', '') else s


def shockwave():
    # フィボナッチ球で、球面上にほぼ均等に方向を並べる
    golden = math.pi * (3 - math.sqrt(5))
    lines = []
    for i in range(SHOCKWAVE_DIRECTIONS):
        y = 1 - 2 * (i + 0.5) / SHOCKWAVE_DIRECTIONS
        r = math.sqrt(1 - y * y)
        th = golden * i
        lines.append('particle end_rod ~ ~ ~ %s %s %s %s 0' % (fmt(r * math.cos(th)), fmt(y), fmt(r * math.sin(th)), SHOCKWAVE_SPEED))
    return '''#> asset:artifact/0921.celestial_star/trigger/detonate/vfx/shockwave
#
# 実行位置から、球面上にほぼ均等に並べた%d方向へ、範囲の外周まで届く光を放つ
%s
#
# @within function asset:artifact/0921.celestial_star/trigger/detonate/vfx/

%s
''' % (SHOCKWAVE_DIRECTIONS, SOURCE_NOTE, '\n'.join(lines))


def ring_markers():
    lines = []
    for d in range(0, 360, RING_STEP):
        t = math.radians(d)
        lines.append('particle dust %s ^%s ^ ^%s 0 0 0 0 1' % (RING_DUST, fmt(RING_RADIUS * math.sin(t)), fmt(RING_RADIUS * math.cos(t))))
    return '''#> asset:effect/0402.celestial_star/tick/vfx/ring_markers
#
# 実行位置を中心とする半径%dmの水平な円周上に、実行方向から%d度ごとに黄色の目印を描く
%s
#
# @within function asset:effect/0402.celestial_star/tick/vfx/ring.m

%s
''' % (RING_RADIUS, RING_STEP, SOURCE_NOTE, '\n'.join(lines))


def main():
    outputs = {
        FUNCTIONS / 'artifact/0921.celestial_star/trigger/detonate/vfx/shockwave.mcfunction': shockwave(),
        FUNCTIONS / 'effect/0402.celestial_star/tick/vfx/ring_markers.mcfunction': ring_markers(),
    }
    for path in outputs:
        if not path.parent.is_dir():
            raise SystemExit('出力先がありません: %s' % path.parent)
    for path, body in outputs.items():
        path.write_text(body, encoding='utf-8', newline='\n')
        print('wrote', path.relative_to(REPO))


if __name__ == '__main__':
    main()
