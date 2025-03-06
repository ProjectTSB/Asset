#> asset:effect/0029.poison/tick/deal_damage
# @within function asset:effect/0029.poison/tick/

#> private
# @private
    #declare score_holder $Damage
    #declare score_holder $Stack

# 現在体力の (Stack)%
    function api:data_get/health
    execute store result score $Damage Temporary run data get storage api: Health
    execute store result score $Stack Temporary run data get storage asset:context Stack
    execute store result storage api: Argument.Damage double 0.01 run scoreboard players operation $Damage Temporary *= $Stack Temporary
    data modify storage api: Argument.BypassModifier set value true
    function api:damage/modifier
    data modify storage api: Argument.BypassArmorDefense set value true
    data modify storage api: Argument.BypassArmorToughness set value true
    data modify storage api: Argument.BypassEnchantments set value true
    data modify storage api: Argument.BypassDifficulty set value true
    data modify storage api: Argument.ActivateTrigger set value false
    function api:damage/
    function api:damage/reset

# リセット
    scoreboard players reset $Damage Temporary
    scoreboard players reset $Stack Temporary
