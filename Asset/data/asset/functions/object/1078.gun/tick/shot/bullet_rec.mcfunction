#> asset:object/1078.gun/tick/shot/bullet_rec
#
#
#
# @within function
#   asset:object/1078.gun/tick/shot/
#   asset:object/1078.gun/tick/shot/bullet_rec

# 着弾検知
    execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[type=#lib:living_without_player,tag=!Uninterferable,dx=0] run tag @s add Landing
    execute unless block ^ ^ ^0.5 #lib:no_collision run tag @s add Landing

# 演出
    particle dust 1 0.831 0.325 0.4 ~ ~ ~ 0 0 0 0 6

# 着弾
    execute if entity @s[tag=Landing] positioned ~-0.5 ~-0.5 ~-0.5 as @e[type=#lib:living_without_player,tag=!Uninterferable,dx=0,limit=1] at @s run function asset:object/1078.gun/tick/shot/deal_damage

# 再起
    execute positioned ^ ^ ^0.5 if entity @s[tag=!Landing,distance=..30] run function asset:object/1078.gun/tick/shot/bullet_rec
