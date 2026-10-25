#> asset:object/1060.medic/register
#
# Objectのデータを指定
#
# @within function asset:object/alias/1060/register

# 継承(オプション)
    # data modify storage asset:object Extends append value
    # function asset:object/extends
# 他のモブに継承されることを許可するか (boolean) (オプション)
    # data modify storage asset:object ExtendsSafe set value
# 継承されることを前提とした、抽象的なオブジェクトであるかどうか(boolean)
    data modify storage asset:object IsAbstract set value false
# Tickするかどうか(boolean) (オプション)
    # data modify storage asset:object IsTicking set value

# ID (int)
    data modify storage asset:object ID set value 1060
# フィールド(オプション)
    data modify storage asset:object Field.Heal set value 1f
    data modify storage asset:object Field.OwnerID set value -1
