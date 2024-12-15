#> asset:mob/1004.tultaria/tick/skill/fire/blazing_slash/explosion/recursive
#
#
#
# @within function
#   asset:mob/1004.tultaria/tick/skill/fire/blazing_slash/explosion/
#   asset:mob/1004.tultaria/tick/skill/fire/blazing_slash/explosion/recursive

# 演出
    particle minecraft:explosion ~ ~ ~ 0.5 0.5 0.5 0 1
    particle minecraft:lava ~ ~4 ~ 0.5 3 0.5 0 10
    particle minecraft:flame ~ ~ ~ 0.0 1 0.0 0.3 0
    particle minecraft:flame ~0.3 ~0.5 ~-0.1 0.0 1 0.0 0.4 0
    particle minecraft:flame ~-0.5 ~1 ~0.2 0.0 1 0.0 0.5 0
    particle minecraft:flame ~0.4 ~1.5 ~-0.7 0.0 1 0.0 0.6 0
    particle minecraft:flame ~0.7 ~2 ~0.5 0.0 1 0.0 0.7 0
    particle minecraft:flame ~-0.3 ~2.5 ~ 0.0 1 0.0 0.8 0
    particle minecraft:flame ~-0.7 ~3 ~-0.1 0.0 1 0.0 0.9 0
    particle minecraft:flame ~0.3 ~3 ~0.2 0.0 1 0.0 1 0

# 範囲内なら再帰
    execute if entity @s[distance=..32] positioned ^ ^ ^2 run function asset:mob/1004.tultaria/tick/skill/fire/blazing_slash/explosion/recursive
