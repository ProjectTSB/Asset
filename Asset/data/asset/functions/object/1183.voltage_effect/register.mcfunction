#> asset:object/1183.voltage_effect/register
#
# Objectのデータを指定
#
# @within function asset:object/alias/1183/register

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
    data modify storage asset:object ID set value 1183
# フィールド(オプション)
    data modify storage asset:object Field.List set value []
    data modify storage asset:object Field.ColorList.0 set value ["0","1","2"]
    data modify storage asset:object Field.ColorList.1 set value ["3","4","5"]
    data modify storage asset:object Field.ColorList.2 set value ["6","7","8"]
