#> asset:artifact/1646.laser_pointer/trigger/rec
#
#
#
# @within function asset:artifact/1646.laser_pointer/trigger/*

# 当たり判定(新規ターゲット)
    execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,dx=0] run return run tag @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,dx=0,limit=1] add 1646.Hit

# 演出
    particle dust 0.4 1 0.2 0.2 ~ ~ ~ 0.02 0 0.0 0 15

# 再帰
    execute if entity @s[distance=..5] positioned ^ ^ ^0.5 if block ~ ~ ~ #lib:no_collision/ run function asset:artifact/1646.laser_pointer/trigger/rec
