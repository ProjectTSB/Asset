#> asset:artifact/1646.laser_pointer/trigger/rec
#
#
#
# @within function asset:artifact/1646.laser_pointer/trigger/*

# 当たり判定
    execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,dx=0] run return run function asset:artifact/1646.laser_pointer/trigger/hit

# 再帰
    execute if entity @s[distance=..5] positioned ^ ^ ^0.5 if block ~ ~ ~ #lib:no_collision/ run function asset:artifact/1646.laser_pointer/trigger/rec
