#> asset:artifact/1183.cosmo_site/trigger/shot
#
#
#
# @within function
#   asset:artifact/1183.cosmo_site/trigger/3.main
#   asset:artifact/1183.cosmo_site/trigger/shot

# 着弾検知
    execute unless block ^ ^ ^0.5 #lib:no_collision/ run tag @s add Landing
    execute if entity @s[tag=!Landing,distance=29..] run tag @s add Landing
# 演出
    particle minecraft:composter ~ ~ ~ 0.1 0.1 0.1 0 1
    particle minecraft:dust 0.075 0.604 0.063 0.7 ~ ~ ~ 0 0 0 0 0

# 着弾
    execute if entity @s[tag=Landing] run function asset:artifact/1183.cosmo_site/trigger/hit

# 再起
    execute positioned ^ ^ ^0.5 if entity @s[tag=!Landing,distance=..30] run function asset:artifact/1183.cosmo_site/trigger/shot
