#> asset:effect/374.charge_plasma/end/attack/3/rec
#
#
#
# @within function asset:effect/374.charge_plasma/end/attack/3/**

# 着弾検知
    execute unless block ^ ^ ^0.5 #lib:no_collision/ run tag @s add Hit

# 命中
    execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[type=#lib:living_without_player,tag=!HitTarget,tag=!Uninterferable,dx=0,limit=1] run function asset:effect/374.charge_plasma/end/attack/3/damage

# 演出
    particle dust 0.3 1.0 0.0 1.0 ~ ~ ~ 0.0 0.0 0.0 1 3

# 再起
    execute positioned ^ ^ ^0.5 if entity @s[tag=!Hit,distance=..20] run function asset:effect/374.charge_plasma/end/attack/3/rec
