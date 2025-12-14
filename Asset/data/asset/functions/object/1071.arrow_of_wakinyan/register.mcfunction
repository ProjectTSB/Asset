#> asset:object/1071.arrow_of_wakinyan/register
#
# Objectのデータを指定
#
# @within function asset:object/alias/1071/register

# 継承(オプション)
    data modify storage asset:object Extends append value 1009
    function asset:object/extends
# 他のObjectに継承されることを許可するか (boolean) (オプション)
    # data modify storage asset:object ExtendsSafe set value
# 継承されることを前提とした、抽象的なObjectであるかどうか(boolean)
    data modify storage asset:object IsAbstract set value false
# Tickするかどうか(boolean) (オプション)
    # data modify storage asset:object IsTicking set value

# ID (int)
    data modify storage asset:object ID set value 1071
# フィールド(オプション)
    data modify storage asset:object Field.Color set value 16776960
    data modify storage asset:object Field.StepPerTick set value 8
    data modify storage asset:object Field.ShowCritParticle set value false
    data modify storage asset:object Field.Range set value 48
    data modify storage asset:object Field.AttackType set value "Magic"
    data modify storage asset:object Field.ElementType set value "Thunder"
    # data modify storage asset:object Field.DamageForSunny set value 1
    # data modify storage asset:object Field.DamageForRaining set value 1
    # data modify storage asset:object Field.DamageForThundering set value 1
