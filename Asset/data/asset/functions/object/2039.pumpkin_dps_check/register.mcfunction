#> asset:object/2039.pumpkin_dps_check/register
#
# Objectのデータを指定
#
# @within function asset:object/alias/2039/register

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
    data modify storage asset:object ID set value 2039
# フィールド(オプション)
    data modify storage asset:object Field.Spin set value 4
    data modify storage asset:object Field.SpinInterval set value 0
    data modify storage asset:object Field.Damage set value 9999.9f
    data modify storage asset:object Field.MobUUID set value -1
