#> asset:mob/0344.louvert_soul_blast/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/0344.louvert_soul_blast/tick/1.trigger

# スコア上昇
    scoreboard players add @s 9K.Tick 1

# VFX 表示
    execute store result storage asset:temp 9K.Num int 1 run scoreboard players get @s 9K.Tick
    function asset:mob/0344.louvert_soul_blast/tick/vfx/m with storage asset:temp 9K

# 警告音
    execute if score @s 9K.Tick matches ..40 run function asset:mob/0344.louvert_soul_blast/tick/4.warning

# 処理
    execute if score @s 9K.Tick matches 41 run function asset:mob/0344.louvert_soul_blast/tick/3.cast

# リセット
    data remove storage asset:temp 9K.Num