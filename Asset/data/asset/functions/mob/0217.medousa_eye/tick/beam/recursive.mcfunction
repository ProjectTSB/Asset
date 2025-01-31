#> asset:mob/0217.medousa_eye/tick/beam/recursive
#
#
#
# @within function
#   asset:mob/0217.medousa_eye/tick/beam/shoot
#   asset:mob/0217.medousa_eye/tick/beam/recursive

# 演出
    particle dust 0.102 0.353 0.102 1.5 ~ ~ ~ 0 0 0 0 1 force @a[distance=..30]
    particle dust 0.102 0.353 0.102 1.5 ^ ^ ^-0.5 0 0 0 0 1 force @a[distance=..30]

# 着弾
    execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @p[gamemode=!spectator,dx=0] run tag @p[gamemode=!spectator,dx=0] add LandingTarget

# 再帰
    execute if entity @s[distance=..20] unless entity @p[tag=LandingTarget,distance=..20] positioned ^ ^ ^1 if block ~ ~ ~ #asset:mob/0217.medousa_eye/passing_block run function asset:mob/0217.medousa_eye/tick/beam/recursive
