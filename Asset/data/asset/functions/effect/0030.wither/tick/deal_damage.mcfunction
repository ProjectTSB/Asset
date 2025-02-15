#> asset:effect/0030.wither/tick/deal_damage
# @within function asset:effect/0030.wither/tick/

#> private
# @private
    #declare score_holder $Damage
    #declare score_holder $Stack

# 最大体力の (Stack)%
    function api:modifier/max_health/get
    execute store result score $Damage Temporary run data get storage api: Return.MaxHealth
    execute store result score $Stack Temporary run data get storage asset:context Stack
    execute store result storage api: Argument.Damage double 0.01 run scoreboard players operation $Damage Temporary *= $Stack Temporary
    data modify storage api: Argument.BypassModifier set value true
    data modify storage api: Argument.BypassArmorDefense set value true
    data modify storage api: Argument.BypassArmorToughness set value true
    data modify storage api: Argument.BypassEnchantments set value true
    data modify storage api: Argument.BypassDifficulty set value true
    data modify storage api: Argument.DeathMessage set value ['{"translate":"%s は衰弱死した","with":[{"selector":"@s"}]}','{"translate":"%s は干からびた","with":[{"selector":"@s"}]}','{"translate":"%s の生命は枯れ果てた","with":[{"selector":"@s"}]}']
    function api:damage/modifier
    function api:damage/
    function api:damage/reset

# リセット
    scoreboard players reset $Damage Temporary
    scoreboard players reset $Stack Temporary
