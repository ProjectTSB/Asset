#> asset:mob/0301.karmic/tick/common/shot_strong/loop
#
#
#
# @within function
#   asset:mob/0301.karmic/tick/common/shot_strong/main
#   asset:mob/0301.karmic/tick/common/shot_strong/loop

# 着弾検知
    execute if entity @a[gamemode=!spectator,distance=..2] run tag @s add Landing
    execute unless block ^ ^ ^0.5 #lib:no_collision run tag @s add Landing

# ターゲットにタグ付与
    execute if entity @a[gamemode=!spectator,distance=..2] run tag @p[gamemode=!spectator,distance=..2] add LandingTarget

# 演出
    particle dust 0.09 0.09 0.09 2.5 ~ ~ ~ 0 0 0 0 6
    particle dust 1 1 1 2.3 ~ ~ ~ 0.03 0.03 0.03 0 2

# 着弾
    execute if entity @s[tag=Landing] run function asset:mob/0301.karmic/tick/common/shot_strong/hit

# 再起
    execute positioned ^ ^ ^0.5 if entity @s[tag=!Landing,distance=..30] run function asset:mob/0301.karmic/tick/common/shot_strong/loop
