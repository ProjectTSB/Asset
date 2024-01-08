#> asset:mob/0352.down_dummy/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/0352.down_dummy/tick/1.trigger

# タイマー増加
    scoreboard players add @s 9S.Timer 1

# 3秒後に消去
    execute if score @s 9S.Timer matches 60.. run fill ~ ~1 ~ ~ ~1 ~ air replace barrier
    execute if score @s 9S.Timer matches 60.. run kill @s
