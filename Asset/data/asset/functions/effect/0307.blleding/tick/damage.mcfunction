#> asset:effect/0307.blleding/tick/damage
#
# 
#
# @within function asset:effect/0307.blleding/tick/

#> Private
# @private
#declare score_holder $InflicterID

# ダメージを与える
    data modify storage api: Argument.Damage set from storage asset:context Stack
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.FixedDamage set value true
    $execute as @p[scores={UserID=$(InflicterID)}] run function api:damage/modifier
    function api:damage/
    function api:damage/reset
