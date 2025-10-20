#> asset:object/1069.icicle_manager/register
#
# Objectのデータを指定
#
# @within function asset:object/alias/1069/register

# 継承(オプション)
    data modify storage asset:object Extends append value 1
    function asset:object/extends
# 他のObjectに継承されることを許可するか (boolean) (オプション)
    # data modify storage asset:object ExtendsSafe set value
# 継承されることを前提とした、抽象的なObjectであるかどうか(boolean)
    data modify storage asset:object IsAbstract set value false
# Tickするかどうか(boolean) (オプション)
    # data modify storage asset:object IsTicking set value

# ID (int)
    data modify storage asset:object ID set value 1069
# フィールド(オプション)
    data modify storage asset:object Field.DamagePerHit set value 1
    data modify storage asset:object Field.UserID set value -1
    data modify storage asset:object Field.WaitingTick set value 0
    data modify storage asset:object Field.MovePerStep set value 0.75d
    data modify storage asset:object Field.StepPerTick set value 1
    data modify storage asset:object Field.Range set value 1
