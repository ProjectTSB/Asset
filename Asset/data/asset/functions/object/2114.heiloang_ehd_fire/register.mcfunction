#> asset:object/2114.heiloang_ehd_fire/register
#
# Objectのデータを指定
#
# @within function asset:object/alias/2114/register

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
    data modify storage asset:object ID set value 2114
# フィールド(オプション)
    # data modify storage asset:object Field.myValue set value
