#> asset:object/1196.creeper_glove_left/register
#
# Objectのデータを指定
#
# @within function asset:object/alias/1196/register

# 継承(オプション)
    data modify storage asset:object Extends append value 1195
    function asset:object/extends
# 他のObjectに継承されることを許可するか (boolean) (オプション)
    # data modify storage asset:object ExtendsSafe set value
# 継承されることを前提とした、抽象的なObjectであるかどうか(boolean)
    data modify storage asset:object IsAbstract set value false
# Tickするかどうか(boolean) (オプション)
    # data modify storage asset:object IsTicking set value

# ID (int)
    data modify storage asset:object ID set value 1196
# フィールド(オプション)
    # 左右を反転する
        data modify storage asset:object Field.Side set value -1
