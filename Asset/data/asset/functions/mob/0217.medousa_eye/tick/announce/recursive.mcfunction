#> asset:mob/0217.medousa_eye/tick/announce/recursive
#
#
#
# @within function
#   asset:mob/0217.medousa_eye/tick/announce/
#   asset:mob/0217.medousa_eye/tick/announce/recursive

# 演出
    particle electric_spark ^ ^ ^ 0 0 0 0 1 force @a[distance=..30]

# プレイヤーに接触したか判定
    execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @p[gamemode=!spectator,dx=0] run tag @s add Landing

# プレイヤーに接触していない かつ 前方が通り抜け可能なブロックでない なら 前方へ再帰
    execute if entity @s[distance=..20] unless entity @s[tag=Landing] positioned ^ ^ ^0.5 if block ^ ^ ^ #asset:mob/0217.medousa_eye/passing_block run function asset:mob/0217.medousa_eye/tick/announce/recursive
