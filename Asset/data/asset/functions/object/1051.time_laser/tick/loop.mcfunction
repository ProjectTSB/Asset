#> asset:object/1051.time_laser/tick/loop
#
#
#
# @within function
#       asset:object/1051.time_laser/tick/
#       asset:object/1051.time_laser/tick/loop

# 演出
    particle minecraft:dust 1 1 1 1 ~ ~ ~ 0.1 0.1 0.1 0 1
    particle minecraft:electric_spark ~ ~ ~ 0.15 0.15 0.15 0.1 2
    execute if predicate lib:random_pass_per/5 run particle minecraft:end_rod ~ ~ ~ 0.15 0.15 0.15 0 1
    execute if predicate lib:random_pass_per/25 run particle minecraft:glow ~ ~ ~ 0.15 0.15 0.15 0 1

# 着弾検知
    execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[type=#lib:living,tag=Enemy,tag=!Uninterferable,dx=0] run tag @s add Landing
    execute unless block ^ ^ ^1 #lib:no_collision run tag @s add Landing

# ターゲットにタグ付与
    execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[type=#lib:living,tag=Enemy,tag=!Uninterferable,dx=0,sort=random,limit=1] run tag @s add LandingTarget

# 着弾
    execute if entity @s[tag=Landing] run function asset:object/1051.time_laser/tick/damage

# 再起
    execute positioned ^ ^ ^0.5 if entity @s[tag=!Landing,distance=..10] run function asset:object/1051.time_laser/tick/loop
