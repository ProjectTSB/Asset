#> asset:object/1097.celestial_star/register
#
# Objectのデータを指定
#
# @within function asset:object/alias/1097/register

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
    data modify storage asset:object ID set value 1097
# フィールド(オプション)
    data modify storage asset:object Field.Range set value 48
    data modify storage asset:object Field.StepPerTick set value 3
    # data modify storage asset:object Field.Damage
    # data modify storage asset:object Field.TargetMobUUID
    # data modify storage asset:object Field.AdditionalMPHeal
    # data modify storage asset:object Field.UserID
    # data modify storage asset:object Field.Color
