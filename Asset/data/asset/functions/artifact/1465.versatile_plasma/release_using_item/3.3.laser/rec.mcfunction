#> asset:artifact/1465.versatile_plasma/release_using_item/3.3.laser/rec
#
#
#
# @within function asset:artifact/1465.versatile_plasma/release_using_item/3.3.laser/*

# 着弾検知
    execute unless block ^ ^ ^0.5 #lib:no_collision/ run tag @s add A1465.Hit

# 命中
    execute positioned ~-0.5 ~-0.5 ~-0.5 run tag @e[type=#lib:living_without_player,tag=Enemy,tag=!A1465.HitTarget,tag=!Uninterferable,dx=0,limit=1] add A1465.HitTarget

# 演出
    particle dust 0.8 1.0 0.5 1.0 ~ ~ ~ 0.0 0.0 0.0 1 1
    particle dust 0.5 1.0 0.5 1.5 ~ ~ ~ 0.0 0.0 0.0 1 1
    particle dust 0.8 0.8 0.3 0.5 ~ ~ ~ 0.0 0.0 0.0 1 1

# 再帰
    execute positioned ^ ^ ^0.5 if entity @s[tag=!A1465.Hit,distance=..20] run function asset:artifact/1465.versatile_plasma/release_using_item/3.3.laser/rec
