#> asset:effect/0034.regeneration/tick/heal
#
#
#
# @within function asset:effect/0034.regeneration/tick/

#> private
# @private
    #declare score_holder $Heal
    #declare score_holder $Stack

# 最大体力の (Stack)%
    function api:modifier/max_health/get
    execute store result score $Heal Temporary run data get storage api: Return.MaxHealth
    execute store result score $Stack Temporary run data get storage asset:context Stack
    execute store result storage api: Argument.Heal double 0.01 run scoreboard players operation $Heal Temporary *= $Stack Temporary
    data modify storage api: Argument.FixedHeal set value true
    function api:heal/modifier
    data modify storage api: Argument.FixedHeal set value false
    data modify storage api: Argument.ActivateTrigger set value false
    function api:heal/
    function api:heal/reset

# リセット
    scoreboard players reset $Heal Temporary
    scoreboard players reset $Stack Temporary
