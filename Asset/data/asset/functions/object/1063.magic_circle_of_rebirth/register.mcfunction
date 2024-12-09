#> asset:object/1063.magic_circle_of_rebirth/register
#
# Objectのデータを指定
#
# @within function asset:object/alias/1063/register

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
    data modify storage asset:object ID set value 1063
# フィールド(オプション)
    data modify storage asset:object Field set value {UserID:-1,Yaw:0f,MagicID:1,ChargeTime:0s,Damage:0f}
