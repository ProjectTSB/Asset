#> asset:mob/0166.flying_potion/attack/debuff/mining_fatigue
#
# 採掘速度低下
#
# @within function asset:mob/0166.flying_potion/attack/

# 採掘速度低下
    function api:global_vars/get_difficulty
    data modify storage api: Argument set value {ID:26,Duration:200}
    execute store result storage api: Argument.Stack int 1 run data get storage api: Return.Difficulty
    execute as @p[tag=Victim] run function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
