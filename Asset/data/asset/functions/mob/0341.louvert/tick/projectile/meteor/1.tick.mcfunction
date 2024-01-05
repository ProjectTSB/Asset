#> asset:mob/0341.louvert/tick/projectile/meteor/1.tick
#
# メテオTick
#
# @within function asset:mob/0341.louvert/tick/2.tick

# スコア上昇
    scoreboard players add @s 9H.ProjectileTick 1

# VFX 表示
    execute store result storage asset:temp 9H.Num int 1 run scoreboard players get @s 9H.ProjectileTick
    function asset:mob/0341.louvert/tick/projectile/meteor/vfx/m with storage asset:temp 9H

# 処理
    execute if score @s 9H.ProjectileTick matches 61 run function asset:mob/0341.louvert/tick/projectile/meteor/3.cast

# リセット
    data remove storage asset:temp 9H.Num