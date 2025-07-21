#> asset:artifact/0237.schrodingers_cat/trigger/give_fall_resistance
#
#
#
# @within function asset:artifact/0237.schrodingers_cat/trigger/3.main

scoreboard players reset $HasTropicalFish Temporary

playsound entity.cat.ambient neutral @a ~ ~ ~ 3 1
particle poof ~ ~-2 ~ 0.2 0 0.2 0.1 30
tellraw @s {"text":"猫いた！！！猫いたよ！！！","color":"gray"}

data modify storage api: Argument.ID set value 190
data modify storage api: Argument.Stack set value 8
data modify storage api: Argument.Duration set value 100
function api:entity/mob/effect/give
function api:entity/mob/effect/reset
