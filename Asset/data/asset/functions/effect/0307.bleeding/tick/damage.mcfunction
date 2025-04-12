#> asset:effect/0307.bleeding/tick/damage
#
#
#
# @within function asset:effect/0307.bleeding/tick/

#> Private
# @private
#declare score_holder $InflicterID

# ダメージを与える
    $data modify storage api: Argument.Damage set value $(Damage)
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.FixedDamage set value true
    $execute as @p[scores={UserID=$(InflicterID)}] run function api:damage/modifier
    data modify storage api: Argument.ApplyTrigger set value false
    function api:damage/
    function api:damage/reset
