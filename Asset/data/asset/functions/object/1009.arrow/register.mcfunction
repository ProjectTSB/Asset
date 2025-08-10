#> asset:object/1009.arrow/register
#
# Objectのデータを指定
#
# @within function asset:object/alias/1009/register

# 継承(オプション)
    data modify storage asset:object Extends append value 1
    function asset:object/extends
# 他のObjectに継承されることを許可するか (boolean) (オプション)
    data modify storage asset:object ExtendsSafe set value true
# 継承されることを前提とした、抽象的なObjectであるかどうか(boolean)
    data modify storage asset:object IsAbstract set value false
# Tickするかどうか(boolean) (オプション)
    # data modify storage asset:object IsTicking set value

# ID (int)
    data modify storage asset:object ID set value 1009
# フィールド(オプション)
    data modify storage asset:object Field.StepPerTick set value 4
    data modify storage asset:object Field.Range set value 40
    data modify storage asset:object Field.Color set value 16777215
    data modify storage asset:object Field.ShowCritParticle set value true
    data modify storage asset:object Field.Damage set value 1
    data modify storage asset:object Field.AttackType set value "Physical"
    data modify storage asset:object Field.ElementType set value "None"
    # data modify storage asset:object Field.AdditionalMPHeal set value
    # data modify storage asset:object Field.UserID set value
    # data modify storage asset:object Field.MobUUID set value
