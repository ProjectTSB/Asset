#> asset:mob/0073.clutch_spider/tick/skill/shot
#
#
#
# @within function
#   asset:mob/0073.clutch_spider/tick/skill/
#   asset:mob/0073.clutch_spider/tick/skill/shot

# 着弾検知
    execute unless block ^ ^ ^2 #lib:no_collision/ run tag @s add Landing
    execute if entity @p[gamemode=!spectator,distance=..3] run tag @s add Landing
    execute if entity @p[gamemode=!spectator,distance=..3] at @p[gamemode=!spectator,distance=..3] run particle cloud ~ ~1.5 ~ 0.6 0.4 0.6 0 30 normal @a

# 演出
    particle dust 1 1 1 1 ~ ~ ~ 0 0 0 0 6

# 着弾
    execute if entity @s[tag=Landing] run function asset:mob/0073.clutch_spider/tick/skill/landing

# 再起
    execute positioned ^ ^ ^0.5 if entity @s[tag=!Landing,distance=..30] run function asset:mob/0073.clutch_spider/tick/skill/shot
