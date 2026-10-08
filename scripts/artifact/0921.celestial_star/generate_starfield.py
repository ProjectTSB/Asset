"""神器921の起爆時に出す星座・星雲・星座に属さない星の召喚関数を生成する

目的
    星座の線・星雲の文字を表す text_display の変換行列と、wax_off で描く星の位置を計算し、
    Object 1197 を召喚する mcfunction に書き出す
入力
    このファイルの CONSTELLATIONS・OFFSETS・星雲と星の定数
    乱数は seed を固定しているので、同じ入力から同じ成果物ができる
出力
    Asset/data/asset/functions/artifact/0921.celestial_star/trigger/detonate/vfx/starfield/ の
    .mcfunction・constellations・nebula・key・wing・lantern・lone_stars の7ファイル
    再実行すると7ファイルを上書きする
    ほかのファイルは変更しない
実行
    python3 scripts/artifact/0921.celestial_star/generate_starfield.py
    repo の場所はこのファイルの位置から求めるので、実行ディレクトリは問わない
依存
    Python 3 の標準ライブラリだけを使う
    星雲の文字は、TSB-ResourcePack の default フォントにある幅指定の空白 (U+F004〜U+F256) を使う
"""
import math
import random
import re
from pathlib import Path

REPO = Path(__file__).resolve().parents[3]
OUT = REPO / 'Asset/data/asset/functions/artifact/0921.celestial_star/trigger/detonate/vfx/starfield'
FUNC = 'asset:artifact/0921.celestial_star/trigger/detonate/vfx/starfield/'
SOURCE_NOTE = '# scripts/artifact/0921.celestial_star/generate_starfield.py で生成する'

# text_display の文字の1px (ブロック)
PX = 0.025
# text " " の背景の箱 (表示座標): x は -2px〜3px、y は 0〜11px
BOX_W, BOX_H, BOX_CX, BOX_CY = 5 * PX, 11 * PX, 0.5 * PX, 5.5 * PX

# 星座の線の太さ (ブロック) と色
LINE_THICKNESS = 0.02
LINE_ALPHA, LINE_RGB = 0xD0, 0xFFE9A8

# 実在しない星座: (名前, 星の (x, y, 奥行き) の一覧, 線で結ぶ星の組, 大きさの倍率)
CONSTELLATIONS = {
    # ひし形の輪から軸が伸び、先に2本の歯が付いた鍵
    'key': ('鍵の星座', [(0, 0, 0.5), (0.8, 0.6, -0.6), (1.6, 0, 0.3), (0.8, -0.6, -0.2), (2.8, 0, 0.8), (3.9, 0.1, -0.4), (3.9, -0.6, 0.6), (3.2, -0.5, -0.7)],
            [(0, 1), (1, 2), (2, 3), (3, 0), (2, 4), (4, 5), (5, 6), (4, 7)], 1.5),
    # 弓なりの翼と、中央から垂れる尾
    'wing': ('翼の星座', [(0, 0, -0.5), (0.9, 0.7, 0.6), (2.0, 1.0, -0.3), (3.1, 0.7, 0.7), (4.0, 0, -0.6), (2.2, -0.3, 0.4), (2.9, -1.0, -0.8)],
             [(0, 1), (1, 2), (2, 3), (3, 4), (2, 5), (5, 6)], 1.45),
    # 吊り手の下にひし形の火袋と、その中の灯
    'lantern': ('灯籠の星座', [(0, 1.8, 0.7), (0, 1.0, -0.3), (-0.8, -0.1, 0.6), (0, -1.2, -0.5), (0.8, -0.1, 0.4), (0, -0.2, -0.8)],
                [(0, 1), (1, 2), (2, 3), (3, 4), (4, 1), (5, 3)], 1.6),
}
# 星座を置く位置 (爆発の中心からのずれ)
OFFSETS = {'key': (7, 7, 4), 'wing': (-8, 6, -2), 'lantern': (1, 8, -8)}

# 星雲: 点を打つ格子・文字の倍率・各面の色
NEBULA_SEED, LAYER_SEED = 921, 1921
NEBULA_ROWS, NEBULA_COLS, NEBULA_SCALE = 29, 96, 2.5
NEBULA_COLORS = ['#A38BFF', '#6CB6FF', '#FF9BD6', '#FFFFFF', '#8FE3FF', '#C9A8FF', '#B0FFE0', '#FFD6A8', '#7FA2FF', '#FFB8E8', '#E0F4FF', '#9DF0C8']

# 星座に属さない星: 個数と、置ける範囲・間隔
LONE_SEED, LONE_COUNT = 4021, 24


def fmt(v, suffix='f'):
    s = ('%.4f' % v).rstrip('0').rstrip('.')
    return ('0' if s in ('-0', '') else s) + suffix


def short(v, digits):
    return ('%.*f' % (digits, v)).rstrip('0').rstrip('.')


def mat3(cols, t):
    a, b, c = cols
    rows = [[a[i], b[i], c[i], t[i]] for i in range(3)] + [[0, 0, 0, 1]]
    return '[' + ','.join(fmt(v) for r in rows for v in r) + ']'


def back(cols, t, cx):
    # 表示の中心 (x=cx) を通る縦軸まわりに180度回す
    # 位置と大きさを変えずに、面の向きだけを反対にする
    a, b, c = cols
    return ([-x for x in a], b, [-x for x in c]), [t[i] + 2 * cx * a[i] for i in range(3)]


def front_and_back(head, cols, t, cx):
    bc, bt = back(cols, t, cx)
    return [head + 'transformation:%s}' % mat3(cols, t), head + 'transformation:%s}' % mat3(bc, bt)]


def cross(a, b):
    return [a[1] * b[2] - a[2] * b[1], a[2] * b[0] - a[0] * b[2], a[0] * b[1] - a[1] * b[0]]


def line_transform(p1, p2, thickness):
    # 背景の箱を、p1 と p2 を結ぶ太さ thickness の帯へ変換する
    d = [p2[i] - p1[i] for i in range(3)]
    length = math.sqrt(sum(x * x for x in d))
    u = [x / length for x in d]
    v = cross([0, 0, 1], u)
    norm = math.sqrt(sum(x * x for x in v))
    v = [x / norm for x in v] if norm > 1e-6 else [0, 1, 0]
    w = cross(u, v)
    sx, sy = length / BOX_W, thickness / BOX_H
    cols = ([x * sx for x in u], [x * sy for x in v], w)
    mid = [(p1[i] + p2[i]) / 2 for i in range(3)]
    return cols, [mid[i] - (cols[0][i] * BOX_CX + cols[1][i] * BOX_CY) for i in range(3)]


def facing(frm, to=(0, 0, 0)):
    dx, dy, dz = to[0] - frm[0], to[1] - frm[1], to[2] - frm[2]
    yaw = round(math.degrees(math.atan2(-dx, dz)), 2)
    pitch = round(-math.degrees(math.atan2(dy, math.hypot(dx, dz))), 2)
    return yaw, pitch


def to_world(p, yaw, pitch):
    # 固定向きの表示は Ry(-yaw)・Rx(pitch) で表示の座標を回す
    ay, ax = math.radians(-yaw), math.radians(pitch)
    x, y, z = p
    y, z = y * math.cos(ax) - z * math.sin(ax), y * math.sin(ax) + z * math.cos(ax)
    x, z = x * math.cos(ay) + z * math.sin(ay), -x * math.sin(ay) + z * math.cos(ay)
    return x, y, z


def argb(alpha, rgb):
    v = (alpha << 24) | rgb
    return v - (1 << 32) if v >= (1 << 31) else v


def summon_function(name, summary, field_override, caller=''):
    return '''#> %s%s
#
%s
%s
#
# @within function %s%s

    data modify storage api: Argument.ID set value 1197
    data modify storage api: Argument.FieldOverride set value %s
    function api:object/summon
''' % (FUNC, name, summary, SOURCE_NOTE, FUNC, caller, field_override)


def summon_with_backs(name, summary, fronts, backs):
    # 表向きの Parts を並べてから、Parts[i] を複製して変換を backs[i] に置き換える
    # 長い文字を表と裏で二重に書かないため
    copies = '\n'.join('    data modify storage api: Argument.FieldOverride.Parts append from storage api: Argument.FieldOverride.Parts[%d]\n'
                        '    data modify storage api: Argument.FieldOverride.Parts[-1].transformation set value %s' % (i, m) for i, m in enumerate(backs))
    return '''#> %s%s
#
%s
%s
#
# @within function %s

# 表向きの表示を Parts に並べる
    data modify storage api: Argument.ID set value 1197
    data modify storage api: Argument.FieldOverride set value {Parts:[%s]}
# 各表示を複製し、変換を裏向きの行列に置き換える
%s
# Object を召喚する
    function api:object/summon
''' % (FUNC, name, summary, SOURCE_NOTE, FUNC, ','.join(fronts), copies)


def squeeze_spaces(row):
    # 8個以上続く空白を、幅指定の空白にまとめる
    # エスケープは7文字なので、7個以下の空白はそのまま残す
    # U+F000〜U+F256 は下3桁を10進で読んだ px が幅になり、空白1個は4px
    def wide(m):
        n, out = len(m.group(0)), []
        while n:
            k = min(n, 64)
            out.append('\\\\uF%03d' % (4 * k))
            n -= k
        return ''.join(out)
    return re.sub(' {8,}', wide, row)


def constellation(key):
    ja, stars, lines, scale = CONSTELLATIONS[key]
    yaw, pitch = facing(OFFSETS[key])
    rot = 'Rotation:[%sf,%sf]' % (short(yaw, 2), short(pitch, 2))
    xs = [p[0] for p in stars]
    ys = [p[1] for p in stars]
    cx, cy = (min(xs) + max(xs)) / 2, (min(ys) + max(ys)) / 2
    pts = [((x - cx) * scale, (y - cy) * scale, z * scale) for x, y, z in stars]
    parts = []
    for i, j in lines:
        cols, t = line_transform(pts[i], pts[j], LINE_THICKNESS)
        head = '{id:"text_display",Tags:["1197.Line"],billboard:"fixed",%s,brightness:{sky:15,block:15},text:\'" "\',background:%d,' % (rot, argb(LINE_ALPHA, LINE_RGB))
        parts += front_and_back(head, cols, t, BOX_CX)
    stars_nbt = ['{X:%sd,Y:%sd,Z:%sd}' % tuple(short(v, 3) for v in to_world(p, yaw, pitch)) for p in pts]
    assert len(parts) == 2 * len(lines) and len(stars_nbt) == len(stars)
    summary = ('# 実行位置に、%sの線を爆発の中心へ向けて描き、星を wax_off で描く表示を召喚する\n'
               '# text_display は表からしか見えないため、線には裏向きの表示も重ねる') % ja
    return summon_function(key, summary, '{Parts:[%s],Stars:[%s]}' % (','.join(parts), ','.join(stars_nbt)), 'constellations')


def nebula():
    rng = random.Random(NEBULA_SEED)
    layer_rng = random.Random(LAYER_SEED)

    def text():
        rows = []
        for r in range(NEBULA_ROWS):
            line = []
            for c in range(NEBULA_COLS):
                dx = (c - NEBULA_COLS / 2) / (NEBULA_COLS / 2)
                dy = (r - NEBULA_ROWS / 2) / (NEBULA_ROWS / 2)
                # 中心ほど点を打つ確率を上げる
                p = (0.045 + 0.22 * math.exp(-(dx * dx + dy * dy) / 0.35)) / 2.56
                if rng.random() < p:
                    line.append('•' if rng.random() < 0.25 else '.')
                else:
                    line.append(' ')
            rows.append(squeeze_spaces(''.join(line).rstrip()) or ' ')
        return '\\\\n'.join(rows)

    k = NEBULA_SCALE
    block_cy = (NEBULA_ROWS * 10 + 1) * PX / 2
    fronts, backs = [], []
    for idx, color in enumerate(NEBULA_COLORS):
        deg = 23 * idx % 180
        rot = 'Rotation:[%df,%df]' % (30 * idx, 20 if idx % 2 == 0 else -20)
        # 面ごとに位置をずらし、すべての面が中心を通らないようにする
        off = (layer_rng.uniform(-3, 3), layer_rng.uniform(-3, 3), layer_rng.uniform(-4, 4))
        c, s = math.cos(math.radians(deg)), math.sin(math.radians(deg))
        cols = ([c * k, s * k, 0], [-s * k, c * k, 0], [0, 0, k])
        t = [off[i] - (cols[0][i] * 0.5 * PX + cols[1][i] * block_cy) for i in range(3)]
        head = '{id:"text_display",Tags:["1197.Glyph","1197.FadeIn","1197.Twinkle"],billboard:"fixed",%s,brightness:{sky:15,block:15},line_width:1000,text_opacity:30,text:\'{"text":"%s","color":"%s"}\',background:0,' % (rot, text(), color)
        bc, bt = back(cols, t, 0.5 * PX)
        fronts.append(head + 'transformation:%s}' % mat3(cols, t))
        backs.append(mat3(bc, bt))
    assert len(fronts) == len(backs) == len(NEBULA_COLORS)
    summary = ('# 実行位置に、点をまばらに打った文字を色・向き・位置を変えて12枚重ねた星雲の表示を召喚する\n'
               '# text_display は表からしか見えないため、裏向きの表示も重ねる')
    return summon_with_backs('nebula', summary, fronts, backs)


def lone_stars():
    rng = random.Random(LONE_SEED)
    stars = []
    while len(stars) < LONE_COUNT:
        # 中心から水平に10m以内、高さ2〜10m
        r = 10 * math.sqrt(rng.random())
        th = rng.uniform(0, 2 * math.pi)
        p = (r * math.cos(th), rng.uniform(2, 10), r * math.sin(th))
        # 星座から3.5m以内と、ほかの星から1.5m以内は避ける
        if any(math.dist(p, o) < 3.5 for o in OFFSETS.values()):
            continue
        if any(math.dist(p, q) < 1.5 for q in stars):
            continue
        stars.append(p)
    stars_nbt = ','.join('{X:%sd,Y:%sd,Z:%sd}' % tuple(short(v, 2) for v in p) for p in stars)
    summary = '# 実行位置を中心に、星座に属さない星を wax_off で描き、余韻のチャイムを鳴らす表示を召喚する'
    return summon_function('lone_stars', summary, '{Stars:[%s],Chime:true}' % stars_nbt)


def index():
    lines = ['    function %slone_stars' % FUNC, '    execute positioned ~ ~2 ~ run function %snebula' % FUNC]
    return '''#> %s
#
# 実行位置の上空に、星雲と、星座に属さない星の表示を召喚する
%s
#
# @within function asset:artifact/0921.celestial_star/trigger/detonate/vfx/

%s
''' % (FUNC, SOURCE_NOTE, '\n'.join(lines))


def constellations():
    lines = ['    execute positioned ~%s ~%s ~%s run function %s%s' % (x, y, z, FUNC, key) for key, (x, y, z) in OFFSETS.items()]
    return '''#> %sconstellations
#
# 実行位置の上空に、%dつの星座の表示を召喚する
%s
#
# @within function asset:artifact/0921.celestial_star/trigger/detonate/vfx/

%s
''' % (FUNC, len(OFFSETS), SOURCE_NOTE, '\n'.join(lines))


def main():
    if not OUT.is_dir():
        raise SystemExit('出力先がありません: %s' % OUT)
    outputs = {'.mcfunction': index(), 'constellations.mcfunction': constellations(), 'nebula.mcfunction': nebula(), 'lone_stars.mcfunction': lone_stars()}
    for key in CONSTELLATIONS:
        outputs[key + '.mcfunction'] = constellation(key)
    for name, body in outputs.items():
        (OUT / name).write_text(body, encoding='utf-8', newline='\n')
    print('wrote %d files to %s' % (len(outputs), OUT.relative_to(REPO)))


if __name__ == '__main__':
    main()
