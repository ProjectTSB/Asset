#> asset:mob/0411.behemoth/tick/util/move_to_ground_loop
#
# 汎用処理 接地
#
# @within asset:mob/0411.behemoth/tick/util/move_to_ground
# @within asset:mob/0411.behemoth/tick/util/move_to_ground_loop

# 接地するまで繰り返す
    scoreboard players remove @s BF.Counter 1
    execute if score @s BF.Counter matches 1.. if block ~ ~-1 ~ #lib:no_collision/ positioned ~ ~-1 ~ run function asset:mob/0411.behemoth/tick/util/move_to_ground_loop
    execute unless block ~ ~-1 ~ #lib:no_collision/ run tp @s ~ ~ ~
