#> asset:mob/0038.laser_eye/tick/shoot/recursive
#
# ビーム処理
#
# @within function
#   asset:mob/0038.laser_eye/tick/shoot/shoot
#   asset:mob/0038.laser_eye/tick/shoot/recursive

# 演出
    particle minecraft:composter ~ ~ ~ 0.1 0.1 0.1 0 1
    particle minecraft:dust 0.075 0.604 0.063 0.7 ~ ~ ~ 0 0 0 0 0

# 射程計測スコア
    scoreboard players add $Range Temporary 1

# 着弾検知
    execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @p[tag=!PlayerShouldInvulnerable,dx=0] run tag @s add Landing
    execute unless block ^ ^ ^0.5 #lib:no_collision/ run tag @s add Landing

# ターゲットにタグ付与
    execute positioned ~-0.5 ~-0.5 ~-0.5 run tag @p[tag=!PlayerShouldInvulnerable,dx=0,sort=random,limit=1] add LandingTarget

# 着弾
    execute if entity @s[tag=Landing] run function asset:mob/0038.laser_eye/tick/shoot/damage

# 再起
    execute positioned ^ ^ ^0.5 if entity @s[tag=!Landing,distance=..30] run function asset:mob/0038.laser_eye/tick/shoot/recursive
