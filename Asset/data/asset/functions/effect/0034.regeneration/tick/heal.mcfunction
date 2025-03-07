#> asset:effect/0034.regeneration/tick/heal
#
#
#
# @within function asset:effect/0034.regeneration/tick/

#> private
# @private
    #declare score_holder $Heal
    #declare score_holder $Per
    #declare score_holder $Stack

# 最大体力の (Stack)%
    function api:modifier/max_health/get
    execute store result score $Heal Temporary run data get storage api: Return.MaxHealth
    execute store result score $Per Temporary run data get storage asset:context this.HealPer 10000
    execute store result score $Stack Temporary run data get storage asset:context Stack
    scoreboard players operation $Heal Temporary *= $Per Temporary
    scoreboard players operation $Heal Temporary *= $Stack Temporary
    execute store result storage api: Argument.Heal double 0.0001 run scoreboard players get $Heal Temporary
    execute store result storage api: Argument.Heal double 0.01 run scoreboard players operation $Heal Temporary *= $Stack Temporary
    data modify storage api: Argument.FixedHeal set value true
    function api:heal/modifier
    data modify storage api: Argument.FixedHeal set value false
    data modify storage api: Argument.ApplyTrigger set value false
    function api:heal/
    function api:heal/reset

# リセット
    scoreboard players reset $Heal Temporary
    scoreboard players reset $Per Temporary
    scoreboard players reset $Stack Temporary
