#> asset:artifact/1332.bebebeam/trigger/beam/recursive
#
#
#
# @within function
#   asset:artifact/1332.bebebeam/trigger/beam/
#   asset:artifact/1332.bebebeam/trigger/beam/recursive

# Rangeのインクリメント
    scoreboard players add $110.Range Temporary 1

# 演出
    execute if score @s 110.Element matches 0 run particle dust 0.8 0.4 0 0.5 ~ ~ ~ 0.05 0.05 0.05 0 1
    execute if score @s 110.Element matches 1 run particle dust 0.216 0.675 1 0.5 ~ ~ ~ 0.05 0.05 0.05 0 1
    execute if score @s 110.Element matches 2 run particle dust 1 0.976 0.337 0.5 ~ ~ ~ 0.05 0.05 0.05 0 1

# 敵がいたらダメージを与え、再帰終了
    execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,dx=0,limit=1] run return run function asset:artifact/1332.bebebeam/trigger/beam/damage

# 再帰
    execute if score $110.Range Temporary matches ..32 positioned ^ ^ ^0.5 if block ~ ~ ~ #lib:no_collision/ run function asset:artifact/1332.bebebeam/trigger/beam/recursive
