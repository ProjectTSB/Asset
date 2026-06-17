#> asset:object/1161.ice_brand_arts/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/1161/tick


#落下処理
    execute if block ~ ~-0.5 ~ #lib:no_collision/ run tp @s ~ ~-0.5 ~
    particle minecraft:dust 0.6 0.8 1.0 1.5 ~ ~ ~
    execute unless block ~ ~-0.5 ~ #lib:no_collision/ run particle block dirt ~ ~ ~ 1 1 1 0 20
    execute unless block ~ ~-0.5 ~ #lib:no_collision/ run playsound item.trident.hit_ground player @a ~ ~ ~ 1 2
    execute unless block ~ ~-0.5 ~ #lib:no_collision/ run tag @s add W9.Land
    # execute if score @s 1161.Land matches 0 at @s run function asset:object/1161.ice_brand_arts/tick/fall
