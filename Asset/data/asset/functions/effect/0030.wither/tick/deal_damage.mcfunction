#> asset:effect/0030.wither/tick/deal_damage
# @within function asset:effect/0030.wither/tick/

#> private
# @private
    #declare score_holder $Damage
    #declare score_holder $Per
    #declare score_holder $Stack

# 最大体力の (Stack)%
    function api:modifier/max_health/get
    execute store result score $Damage Temporary run data get storage api: Return.MaxHealth
    execute store result score $Per Temporary run data get storage asset:context this.DamagePer 10000
    execute store result score $Stack Temporary run data get storage asset:context Stack
    scoreboard players operation $Damage Temporary *= $Per Temporary
    scoreboard players operation $Damage Temporary *= $Stack Temporary
    execute store result storage api: Argument.Damage double 0.0001 run scoreboard players get $Damage Temporary
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.BypassModifier set value true
    function api:damage/modifier
    data modify storage api: Argument.BypassArmorDefense set value true
    data modify storage api: Argument.BypassArmorToughness set value true
    data modify storage api: Argument.BypassEnchantments set value true
    data modify storage api: Argument.BypassDifficulty set value true
    data modify storage api: Argument.ApplyTrigger set value false
    data modify storage api: Argument.DeathMessage set value ['{"translate":"%s は衰弱死した","with":[{"selector":"@s"}]}','{"translate":"%s は干からびた","with":[{"selector":"@s"}]}','{"translate":"%s の生命は枯れ果てた","with":[{"selector":"@s"}]}']
    function api:damage/
    function api:damage/reset

# リセット
    scoreboard players reset $Damage Temporary
    scoreboard players reset $Per Temporary
    scoreboard players reset $Stack Temporary
