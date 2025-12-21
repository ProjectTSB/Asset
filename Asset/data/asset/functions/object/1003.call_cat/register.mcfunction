#> asset:object/1003.call_cat/register
#
# Objectのデータを指定
#
# @within function asset:object/alias/1003/register

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
    data modify storage asset:object ID set value 1003
# フィールド(オプション)
    data modify storage asset:object Field.Tick set value 200
    data modify storage asset:object Field.Heal set value 1
    data modify storage asset:object Field.HealInterval.Max set value 20
    data modify storage asset:object Field.UserID set value -1
    # data modify storage asset:object Field.OwnerUUID set value 600
