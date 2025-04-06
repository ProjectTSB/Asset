#> asset:mob/0166.flying_potion/attack/debuff/nausea
#
# 吐き気
#
# @within function asset:mob/0166.flying_potion/attack/

# 吐き気
# 吐き気は効果時間を短めに設定する
    function api:global_vars/get_difficulty
    data modify storage api: Argument.ID set value 27
    execute store result storage api: Argument.Duration int 25 run data get storage api: Return.Difficulty
    execute as @p[tag=Victim] run function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
