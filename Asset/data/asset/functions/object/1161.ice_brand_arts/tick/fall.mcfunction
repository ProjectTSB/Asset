#> asset:object/1161.ice_brand_arts/tick/fall
#
# Objectのtick時の処理
#
# @within function  asset:object/1161.ice_brand_arts/tick/


#落下処理
    execute if block ^ ^ ^0.5 #lib:no_collision/ run tp @s ^ ^ ^0.5
    particle minecraft:dust 0.431 0.914 1 1 ^ ^ ^ 0 0 0 0 1 normal @a
    particle minecraft:dust 0.431 0.914 1 1 ^ ^ ^-0.25 0 0 0 0 1 normal @a
    execute unless block ^ ^ ^0.5 #lib:no_collision/ run function asset:object/1161.ice_brand_arts/tick/vfx
