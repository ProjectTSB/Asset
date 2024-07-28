#> asset:mob/0077.golden_watermelon/tick/
#
# Mobのtick時の処理
#
# @within function asset:mob/0077.golden_watermelon/_/tick

# 演出
    particle dust 1 0.941 0.141 2 ~ ~ ~ 0.4 0.4 0.4 0 2 normal @a

# スコア
    scoreboard players add @s 25.Tick 1

# tp
    execute unless entity @s[scores={25.Tick=20..}] if block ^ ^ ^1 #lib:no_collision if block ^ ^ ^1.5 #lib:no_collision run tp @s ^ ^ ^1.5 ~ ~1.5

# 1段目爆発
    execute if entity @s[scores={25.Tick=20}] run function asset:mob/0077.golden_watermelon/tick/1st_explosion
    execute unless entity @s[scores={25.Tick=20..}] if block ~ ~ ~ #lib:no_collision positioned ~-0.5 ~-0.5 ~-0.5 if entity @p[dx=0] at @s run function asset:mob/0077.golden_watermelon/tick/1st_explosion
    execute unless entity @s[scores={25.Tick=20..}] unless block ^ ^ ^1.5 #lib:no_collision run function asset:mob/0077.golden_watermelon/tick/1st_explosion

# 2段目爆発までの処理
# 地面に落ちる
    execute if entity @s[scores={25.Tick=20..}] if block ~ ~-0.2 ~ #lib:no_collision run tp @s ~ ~-0.2 ~

# 2段目爆発
    execute if entity @s[scores={25.Tick=35..}] run function asset:mob/0077.golden_watermelon/tick/2nd_explosion
