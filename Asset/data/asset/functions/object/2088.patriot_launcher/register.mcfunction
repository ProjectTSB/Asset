#> asset:object/2088.patriot_launcher/register
#
# Objectのデータを指定
#
# @within function asset:object/alias/2088/register

# 継承(オプション)
    # data modify storage asset:object Extends append value 
    # function asset:object/extends
# 他のモブに継承されることを許可するか (boolean) (オプション)
    # data modify storage asset:object ExtendsSafe set value 
# 継承されることを前提とした、抽象的なオブジェクトであるかどうか(boolean)
    data modify storage asset:object IsAbstract set value false

# ID (int)
    data modify storage asset:object ID set value 2088
# フィールド(オプション)
    # data modify storage asset:object Field.myValue set value
    data modify storage asset:object Field.Durability set value 10
    data modify storage asset:object Field.RepairTime set value 0
    data modify storage asset:object Field.MaxRepairTime set value 51200
    data modify storage asset:object Field.IsBroken set value 0b
    data modify storage asset:object Field.IsActive set value 1b
    data modify storage asset:object Field.MissileCooltime set value 0
    data modify storage asset:object Field.MaxMissileCooltime set value 220
