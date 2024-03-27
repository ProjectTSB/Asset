#> asset:mob/0155.immorality/tick/6.shot_recursive
#
# 銃の再帰処理部
#
# @within function
#   asset:mob/0155.immorality/tick/5.shot
#   asset:mob/0155.immorality/tick/6.shot_recursive

# 着弾検知
    execute unless block ^ ^ ^0.25 #lib:no_collision run tag @s add Landing

# ターゲットにタグ付与
    execute positioned ~-0.5 ~-0.5 ~-0.5 run tag @p[gamemode=!spectator,dx=0] add LandingTarget

# 演出
    particle dust 0.357 0 0 1 ~ ~ ~ 0 0 0 0 2
    particle dust 0.357 0 0 0.5 ~ ~ ~ 0.2 0.2 0.2 0 2

# 再帰
    execute positioned ^ ^ ^0.25 if entity @s[tag=!Landing,distance=..20] run function asset:mob/0155.immorality/tick/6.shot_recursive