#> asset:object/1022.shaking_bullet/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/1022/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 演出
    particle dust 0.8 500000000 1000000000 0.9 ~ ~ ~ 0.15 0.15 0.15 0 4
    particle bubble ~ ~ ~ 0.1 0.1 0.1 0 4 normal @a
    particle dolphin ~ ~ ~ 0.1 0.1 0.1 0 4 normal @a
    playsound block.bubble_column.bubble_pop neutral @a ~ ~ ~ 1.3 0 0
    playsound block.bubble_column.bubble_pop neutral @a ~ ~ ~ 1.3 0.5 0

# super
    function asset:object/super.tick

# 一定時間経過で消滅兼ヒット判定
# 既にHitメソッドが実行されている可能性があるので対策はしておく
    execute if score @s General.Object.Tick matches 80.. unless score @s ObjectID matches -2147483648..2147483647 run function asset:object/call.m {Method:"hit"}
