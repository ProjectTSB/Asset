#> asset:artifact/1043.gamma_ray/trigger/6.1.loop
#
# 着弾検知ループ
#
# @within function
#   asset:artifact/1043.gamma_ray/trigger/6.cast
#   asset:artifact/1043.gamma_ray/trigger/6.1.loop

# 着弾検知
    execute positioned ~-0.5 ~-0.5 ~-0.5 run tag @e[tag=Enemy,tag=!Uninterferable,dx=0] add SZ.Landing

# 再帰
    execute positioned ^ ^ ^0.5 if block ~ ~ ~ #lib:no_collision if entity @s[distance=..24] run function asset:artifact/1043.gamma_ray/trigger/6.1.loop