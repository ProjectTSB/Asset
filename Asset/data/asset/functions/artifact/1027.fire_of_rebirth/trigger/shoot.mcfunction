#> asset:artifact/1027.fire_of_rebirth/trigger/shoot
#
#
#
# @within function
#   asset:artifact/1027.fire_of_rebirth/trigger/magic_circle
#   asset:artifact/1027.fire_of_rebirth/trigger/shoot

# 着弾検知
    execute if entity @e[type=#lib:living,type=!player,tag=!Uninterferable,distance=..2] run tag @s add Landing
    execute unless block ^ ^ ^0.5 #lib:no_collision run tag @s add Landing

# ターゲットにタグ付与
    execute if entity @e[type=#lib:living,type=!player,tag=!Uninterferable,distance=..2] run tag @e[type=#lib:living,type=!player,tag=!Uninterferable,distance=..2,limit=1] add LandingTarget

# 演出
    particle dust 100000000 2 0 2 ~ ~ ~ 0.2 0.2 0.2 0 5
    particle lava ~ ~ ~ 0.2 0.2 0.2 0 1

# 着弾
    execute if entity @s[tag=Landing] run function asset:artifact/1027.fire_of_rebirth/trigger/damage

# 再起
    execute positioned ^ ^ ^0.5 if entity @s[tag=!Landing,distance=..30] run function asset:artifact/1027.fire_of_rebirth/trigger/shoot
