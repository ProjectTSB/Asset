#> asset:object/1102.turret/tick/shot/bullet_rec
#
#
#
# @within function
#   asset:object/1102.turret/tick/shot/shot
#   asset:object/1102.turret/tick/shot/bullet_rec

# 着弾検知
    execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[type=#lib:living,type=!player,tag=!Uninterferable,dx=0] run tag @s add Landing
    execute unless block ^ ^ ^0.5 #lib:no_collision run tag @s add Landing

# 演出
    particle dust 0.345 0.345 0.345 0.4 ~ ~ ~ 0 0 0 0 6

# 着弾
    execute if entity @s[tag=Landing] positioned ~-0.5 ~-0.5 ~-0.5 as @e[type=#lib:living,type=!player,tag=!Uninterferable,dx=0,limit=1] at @s run function asset:object/1102.turret/tick/shot/deal_damage

# 再帰
    execute positioned ^ ^ ^0.5 if entity @s[tag=!Landing,distance=..30] run function asset:object/1102.turret/tick/shot/bullet_rec
