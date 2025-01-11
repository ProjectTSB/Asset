#> asset:object/2074.water_magic/register
#
# Objectのデータを指定
#
# @within function asset:object/alias/2074/register

# 継承(オプション)
    # data modify storage asset:object Extends append value
    # function asset:object/extends
# 他のモブに継承されることを許可するか (boolean) (オプション)
    # data modify storage asset:object ExtendsSafe set value
# 継承されることを前提とした、抽象的なオブジェクトであるかどうか(boolean)
    data modify storage asset:object IsAbstract set value false

# ID (int)
    data modify storage asset:object ID set value 2074
# フィールド(オプション)
    data modify storage asset:object Field.Damage set value 1f
    data modify storage asset:object Field.Slowness set value false
    data modify storage asset:object Field.AttackCount set value 1
    data modify storage asset:object Field.MobUUID set value -1
