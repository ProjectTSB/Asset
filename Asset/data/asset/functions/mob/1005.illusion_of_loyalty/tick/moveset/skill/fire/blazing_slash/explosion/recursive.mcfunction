#> asset:mob/1005.illusion_of_loyalty/tick/moveset/skill/fire/blazing_slash/explosion/recursive
#
#
#
# @within function
#   asset:mob/1005.illusion_of_loyalty/tick/moveset/skill/fire/blazing_slash/explosion/
#   asset:mob/1005.illusion_of_loyalty/tick/moveset/skill/fire/blazing_slash/explosion/recursive

# 演出
    execute if predicate lib:random_pass_per/25 run particle minecraft:explosion ~ ~ ~ 0.5 0.5 0.5 0 1
    particle minecraft:lava ~ ~4 ~ 0.5 3 0.5 0 5
    particle minecraft:flame ~ ~ ~ 0.0 1 0.0 0.3 0
    particle minecraft:flame ~0.3 ~0.5 ~-0.1 0.0 1 0.0 0.4 0
    particle minecraft:flame ~-0.5 ~1 ~0.2 0.0 1 0.0 0.5 0
    particle minecraft:flame ~0.4 ~1.5 ~-0.7 0.0 1 0.0 0.6 0
    particle minecraft:flame ~0.7 ~2 ~0.5 0.0 1 0.0 0.7 0

# 範囲内なら再帰
    execute if entity @s[distance=..32] positioned ^ ^ ^2 run function asset:mob/1005.illusion_of_loyalty/tick/moveset/skill/fire/blazing_slash/explosion/recursive
