#> asset:mob/0055.hetukedah/tick/skill/flamethrower/windup
#
#
#
# @within function asset:mob/0055.hetukedah/tick/skill/flamethrower/tick

# 演出
    particle minecraft:dust 1 0.6 0 2 ~ ~1 ~ 0.5 0.5 0.5 0 50 force @a[distance=..30]
    particle minecraft:flame ~ ~1 ~ 0.5 0.5 0.5 0 20 force @a[distance=..30]
    playsound minecraft:entity.blaze.ambient hostile @a ~ ~ ~ 2 1.5
    playsound minecraft:entity.ravager.celebrate hostile @a ~ ~ ~ 2 2

# こっち見る
    execute facing entity @p eyes run tp @s ~ ~ ~ ~ 0

# 右か左をランダムで選択
    execute if predicate lib:random_pass_per/50 run tag @s add 1J.Turn.Left

# NoAIにする
    data merge entity @s {NoAI:1b}
