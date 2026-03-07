#> asset:mob/2003.abstract_eye/register
#
# Mobのデータを指定
#
# @within function asset:mob/alias/2003/register

# 他のモブに継承されることを許可するか (boolean) (オプション)
    data modify storage asset:mob ExtendsSafe set value true
# 継承されることを前提とした、抽象的なモブであるかどうか(boolean)
    data modify storage asset:mob IsAbstract set value true
# ID (int)
    data modify storage asset:mob ID set value 2003
# フィールド
    # data modify storage asset:mob Field.myValue set value
