#> asset:object/1140.arrow_of_honey_bee/register
#
# Objectのデータを指定
#
# @within function asset:object/alias/1140/register

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
    data modify storage asset:object ID set value 1140
# フィールド(オプション)
    data modify storage asset:object Field.Color set value 16760100
    data modify storage asset:object Field.ShowCritParticle set value false
    data modify storage asset:object Field.Range set value 40
    data modify storage asset:object Field.Speed set value 4
    data modify storage asset:object Field.AttackType set value "Magic"
    data modify storage asset:object Field.ElementType set value "Water"
    data modify storage asset:object Field.FullCharge set value false
    data modify storage asset:object Field.Damage set value 1
    data modify storage asset:object Field.PoisonDamage set value 1
    data modify storage asset:object Field.AdditionalMPHeal set value 1
