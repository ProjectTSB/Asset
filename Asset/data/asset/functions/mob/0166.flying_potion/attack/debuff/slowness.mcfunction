#> asset:mob/0166.flying_potion/attack/debuff/slowness
#
# 鈍足
#
# @within function asset:mob/0166.flying_potion/attack/

# 移動速度低下
    function api:global_vars/get_difficulty
    data modify storage api: Argument set value {ID:17,Duration:200}
    execute store result storage api: Argument.Stack int 2 run data get storage api: Return.Difficulty
    execute as @p[tag=Victim] run function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
