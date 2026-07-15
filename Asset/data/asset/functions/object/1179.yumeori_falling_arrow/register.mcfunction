#> asset:object/1179.yumeori_falling_arrow/register
#
# Objectのデータを指定
#
# @within function asset:object/alias/1179/register

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
    data modify storage asset:object ID set value 1179
# フィールド(オプション)
    data modify storage asset:object Field.Delay set value 20
    data modify storage asset:object Field.RecursiveLimit set value 10
