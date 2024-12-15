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
    particle minecraft:flame ~ ~4 ~ 0.2 3 0.2 0.01 10



# 壁がなければ再帰
    execute if entity @s[distance=..32] positioned ^ ^ ^2 if block ~ ~ ~ #lib:no_collision run function asset:mob/1004.tultaria/tick/skill/fire/blazing_slash/explosion/recursive
