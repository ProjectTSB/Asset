#> asset:artifact/0077.swords_of_waterfall_climbing/trigger/attack/dragon_strike/fall_enemy
#
# 敵を再帰で叩き落す
#
# @within function
#   asset:artifact/0077.swords_of_waterfall_climbing/trigger/attack/dragon_strike/
#   asset:artifact/0077.swords_of_waterfall_climbing/trigger/attack/dragon_strike/fall_enemy

# スコア
    scoreboard players add $Recursive Temporary 1

# 演出
    particle rain ~ ~ ~ 0.5 0.5 0.5 0 3 normal @a
    particle dust 0.25 0.7 100000000 1.3 ~ ~ ~ 0.5 0.5 0.5 0 5 normal @a

# ブロック接触判定
    execute unless block ~ ~-1 ~ #lib:no_collision/ run tag @s add Landing

# 下に落ちる
    execute if entity @s[tag=!Landing] run tp @s ~ ~-1 ~

# 再帰
    execute if score $Recursive Temporary matches ..30 if entity @s[tag=!Landing] at @s run function asset:artifact/0077.swords_of_waterfall_climbing/trigger/attack/dragon_strike/fall_enemy
