#> asset:object/2221.aurora_scaffold/register
#
# Objectのデータを指定
#
# @within function asset:object/alias/2221/register

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
    data modify storage asset:object ID set value 2221
# フィールド(オプション)
    data modify storage asset:object Field.MobUUID set value -1
    data modify storage asset:object Field.Tick set value 200
    data modify storage asset:object Field.Interval set value 40
    data modify storage asset:object Field.CMDList set value [20167,20168,20169,20170,20171,20172,20173,20174,20175]
