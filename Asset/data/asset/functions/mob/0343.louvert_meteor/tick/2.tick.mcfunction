#> asset:mob/0343.louvert_meteor/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/0343.louvert_meteor/tick/1.trigger

# スコア上昇
    scoreboard players add @s 9J.Tick 1

# VFX 表示
    execute store result storage asset:temp 9J.Num int 1 run scoreboard players get @s 9J.Tick
    function asset:mob/0343.louvert_meteor/tick/vfx/m with storage asset:temp 9J

# キル
    execute if score @s 9J.Tick matches 61 run function asset:mob/0343.louvert_meteor/tick/3.cast

# リセット
    data remove storage asset:temp 9J.Num