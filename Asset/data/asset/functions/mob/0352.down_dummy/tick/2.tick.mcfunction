#> asset:mob/0352.down_dummy/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/0352.down_dummy/tick/1.trigger

# タイマー増加
    scoreboard players add @s 9S.Timer 1

# 近くのプレイヤーを自分の位置に移動
    execute unless entity @a[distance=..0.6] if entity @a[distance=0.8..1] as @p run tp @s ~ ~ ~

# 3秒後に消去
    execute if score @s 9S.Timer matches 60.. run fill ~ ~1 ~ ~ ~1 ~ air replace barrier
    execute if score @s 9S.Timer matches 60.. run kill @s
