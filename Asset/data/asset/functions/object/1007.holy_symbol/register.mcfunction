#> asset:object/1007.holy_symbol/register
#
# Objectのデータを指定
#
# @within function asset:object/alias/1007/register

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
    data modify storage asset:object ID set value 1007
# フィールド(オプション)
    data modify storage asset:object Field.Interval set value 0
    data modify storage asset:object Field.MPHealPer set value 0.01
    data modify storage asset:object Field.Effect.Stack set value 1
    data modify storage asset:object Field.Effect.Duration set value 200
