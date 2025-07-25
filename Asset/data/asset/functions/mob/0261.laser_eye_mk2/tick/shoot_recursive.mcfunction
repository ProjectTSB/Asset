#> asset:mob/0261.laser_eye_mk2/tick/shoot_recursive
#
# ビーム処理
#
# @within function
#   asset:mob/0261.laser_eye_mk2/tick/shoot
#   asset:mob/0261.laser_eye_mk2/tick/shoot_recursive

# 射程記録用スコア
    scoreboard players add $79.Range Temporary 1

# 着弾検知
    execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @p[gamemode=!spectator,dx=0] run tag @s add Landing
    execute unless block ^ ^ ^0.5 #lib:no_collision run tag @s add Landing

# ターゲットにタグ付与
    execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @p[gamemode=!spectator,dx=0] run tag @p[gamemode=!spectator,dx=0,sort=random,limit=1] add LandingTarget

# 演出
    particle minecraft:composter ~ ~ ~ 0.3 0.3 0.3 0 3
    particle minecraft:dust 0.075 0.604 0.063 0.7 ~ ~ ~ 0.3 0.3 0.3 0 3

# 着弾
    execute if entity @s[tag=Landing] run function asset:mob/0261.laser_eye_mk2/tick/damage

# 再起
    execute positioned ^ ^ ^0.5 if entity @s[tag=!Landing,distance=..30] run function asset:mob/0261.laser_eye_mk2/tick/shoot_recursive
