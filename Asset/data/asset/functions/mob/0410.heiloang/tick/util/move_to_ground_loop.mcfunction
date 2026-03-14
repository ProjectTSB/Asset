#> asset:mob/0410.heiloang/tick/util/move_to_ground_loop
#
# 汎用処理 接地
#
# @within asset:mob/0410.heiloang/tick/util/move_to_ground
# @within asset:mob/0410.heiloang/tick/util/move_to_ground_loop

# 接地するまで繰り返す
    scoreboard players remove @s BE.Counter 1
    execute if score @s BE.Counter matches 1.. if block ~ ~-1 ~ #lib:no_collision/ positioned ~ ~-1 ~ run function asset:mob/0410.heiloang/tick/util/move_to_ground_loop
    execute unless block ~ ~-1 ~ #lib:no_collision/ run tp @s ~ ~ ~
