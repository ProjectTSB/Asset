#> asset:mob/0081.snow_cloud/tick/on_player
#
# プレイヤーの上にいる時の処理
#
# @within function asset:mob/0081.snow_cloud/tick/

# スコア蓄積
    scoreboard players add @s 29.SnowTick 1

# 雪が降る演出
    execute at @s run particle snowflake ~ ~2 ~ 0.75 2.5 0.75 0 3 normal @a
