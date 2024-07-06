#> asset:mob/0075.watermelon/tick/
#
# Mobのtick時の処理
#
# @within function asset:mob/0075.watermelon/_/tick

# 前方へ行く処理
    tp @s ^ ^ ^1 ~ ~1

# 演出
    particle dust 0.173 1 0.243 1 ~ ~1.5 ~ 0.4 0.4 0.4 0 2 normal @a

# スコア
    scoreboard players add @s 23.Tick 1

# 炸裂
    execute if entity @s[scores={23.Tick=60..}] run function asset:mob/0075.watermelon/tick/explosion
    execute if block ~ ~ ~ #lib:air positioned ~-0.5 ~-0.5 ~-0.5 if entity @p[dx=0] at @s run function asset:mob/0075.watermelon/tick/explosion
    execute unless block ^ ^1 ^1 #lib:no_collision run function asset:mob/0075.watermelon/tick/explosion
