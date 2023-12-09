#> asset:mob/0342.louvert_common_fire_magic/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/0342.louvert_common_fire_magic/tick/1.trigger

# スコア上昇
    scoreboard players add @s 9I.Tick 1

# VFX 表示
    execute store result storage asset:temp 9I.Num int 1 run scoreboard players get @s 9I.Tick
    function asset:mob/0342.louvert_common_fire_magic/tick/vfx/m with storage asset:temp 9I

# 処理
    execute if score @s 9I.Tick matches 41 run function asset:mob/0342.louvert_common_fire_magic/tick/3.cast

# リセット
    data remove storage asset:temp 9I.Num