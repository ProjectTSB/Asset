#> asset:mob/0166.flying_potion/attack/debuff/darkness
#
# 暗闇
#
# @within function asset:mob/0166.flying_potion/attack/

# 暗闇
    data modify storage api: Argument.ID set value 24
    execute store result storage api: Argument.Duration int 50 run data get storage api: Return.Difficulty
    execute as @p[tag=Victim] run function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
