#> asset:mob/0075.watermelon/tick/
#
# Mobのtick時の処理
#
# @within function asset:mob/0075.watermelon/_/tick

# スコア
    scoreboard players add @s 23.Tick 1

# 前方へ行く処理
    execute at @s run tp @s ^ ^ ^1 ~ ~1

# 演出
    execute at @s run particle dust 0.173 1 0.243 1 ~ ~ ~ 0.4 0.4 0.4 0 2 normal @a
# 炸裂
    execute if entity @s[scores={23.Tick=30..}] run function asset:mob/0075.watermelon/tick/explosion
    execute if entity @s if block ~ ~ ~ #lib:air positioned ~-0.5 ~-0.5 ~-0.5 if entity @p[dx=0] at @s run function asset:mob/0075.watermelon/tick/explosion
    execute if entity @s unless block ^ ^ ^1 #lib:no_collision run function asset:mob/0075.watermelon/tick/explosion
