#> asset:artifact/1614.wooden_snake_branch/trigger/check_line_of_sight/loop
#
# ループ
#
# @within function
#   asset:artifact/1614.wooden_snake_branch/trigger/check_line_of_sight/
#   asset:artifact/1614.wooden_snake_branch/trigger/check_line_of_sight/loop

# 視線判定
    execute positioned ~-0.15 ~-0.15 ~-0.15 as @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,dx=0] positioned ~-0.6 ~-0.6 ~-0.6 run tag @s[dx=0] add LineHit
# 前進
    execute if entity @s[distance=..8] if block ~ ~ ~ #lib:no_collision/ positioned ^ ^ ^0.3 run function asset:artifact/1614.wooden_snake_branch/trigger/check_line_of_sight/loop
