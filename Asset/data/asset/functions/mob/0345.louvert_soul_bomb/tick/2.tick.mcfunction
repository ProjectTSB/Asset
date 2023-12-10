#> asset:mob/0345.louvert_soul_bomb/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/0345.louvert_soul_bomb/tick/1.trigger

# スコア上昇
    scoreboard players add @s 9L.Tick 1

# カウントダウン
    function asset:mob/0345.louvert_soul_bomb/tick/4.countdown

# VFX
    function asset:mob/0345.louvert_soul_bomb/tick/2.1.tick_vfx

# 警告音
    function asset:mob/0345.louvert_soul_bomb/tick/3.warning

# 処理
    execute if score @s 9L.Tick matches 201 run function asset:mob/0345.louvert_soul_bomb/tick/5.cast

# TPする
    tp @s ~ ~ ~ ~1.5 0