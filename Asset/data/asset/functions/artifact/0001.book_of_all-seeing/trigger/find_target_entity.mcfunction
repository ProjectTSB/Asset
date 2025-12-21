#> asset:artifact/0001.book_of_all-seeing/trigger/find_target_entity
#
# 視点先のentityにタグを付与します。
#
# @within function
#   asset:artifact/0001.book_of_all-seeing/trigger/find_target_entity
#   asset:artifact/0001.book_of_all-seeing/trigger/2.check_condition

# 0 1 2 3 4 5 6 7 8 9 0 1 2 3 4 5 6 7 8 9 0
# |-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|
#     |<==============|
#     |-------------------|
#     |===========|-------------------|
#                 |-------|

execute positioned ~-0.8 ~-0.8 ~-0.8 as @e[type=#lib:living,tag=!this,dx=0,dy=0,dz=0] unless entity @s[type=!player,tag=!Enemy] positioned ~0.6 ~0.6 ~0.6 if entity @s[dx=0,dy=0,dz=0] run tag @s add 01.Target

execute unless entity @e[type=#lib:living,tag=01.Target,distance=..2] positioned ^ ^ ^0.15 if entity @s[distance=..30] if block ~ ~ ~ #lib:no_collision/ run function asset:artifact/0001.book_of_all-seeing/trigger/find_target_entity
