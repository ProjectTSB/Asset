#> asset:object/1197.celestial_starfield/register
#
# Objectのデータを指定
#
# @within function asset:object/alias/1197/register

# 継承(オプション)
    # data modify storage asset:object Extends append value
    # function asset:object/extends
# 他のObjectに継承されることを許可するか (boolean) (オプション)
    # data modify storage asset:object ExtendsSafe set value
# 継承されることを前提とした、抽象的なObjectであるかどうか(boolean)
    data modify storage asset:object IsAbstract set value false
# Tickするかどうか(boolean) (オプション)
    # data modify storage asset:object IsTicking set value

# ID (int)
    data modify storage asset:object ID set value 1197
# フィールド(オプション)
# Parts: 乗せる text_display の一覧
#   線は 1197.Line、文字は 1197.Glyph のタグを付ける
#   1197.FadeIn を付けた文字は、最初の7tickで濃くなる
#   1197.Twinkle を付けた文字は、1枚ずつ別々の時点で明るさが変わる
# Stars: wax_off で星を描く位置の一覧 {X: double, Y: double, Z: double}
#   Objectの位置からのずれを指定する
# Chime: 最初の24tickで、チャイムを余韻として鳴らすか
# Duration: 表示する時間 (tick)
#   最後の10tickで薄くして消す
    data modify storage asset:object Field set value {Parts:[],Stars:[],Chime:false,Duration:80}
