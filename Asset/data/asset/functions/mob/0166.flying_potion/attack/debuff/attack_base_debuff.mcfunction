#> asset:mob/0166.flying_potion/attack/debuff/attack_base_debuff
#
# 与ダメ低下デバフ
#
# @within function asset:mob/0166.flying_potion/attack/

# 与ダメ低下
    function api:global_vars/get_difficulty
    data modify storage api: Argument set value {ID:1,Duration:200}
    execute store result storage api: Argument.Stack int 2 run data get storage api: Return.Difficulty
    execute as @p[tag=Victim] run function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
