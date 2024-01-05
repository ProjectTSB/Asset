#> asset:mob/0341.louvert/tick/projectile/fire_magic/1.tick
#
# 火炎陣Tick
#
# @within function asset:mob/0341.louvert/tick/2.tick

# スコア上昇
    scoreboard players add @s 9H.ProjectileTick 1

# スコアによってDisplayを操作
    execute if score @s 9H.ProjectileTick matches 2 run data merge entity @s {start_interpolation:0,interpolation_duration:9,transformation:{left_rotation:[0f,0.2588f,0f,0.9659f],right_rotation:[0.707f,0f,0f,0.707f],translation:[0f,0.05f,0f],scale:[1.5f,0.2f,1.5f]}}
    execute if score @s 9H.ProjectileTick matches 11 run data merge entity @s {start_interpolation:0,interpolation_duration:10,transformation:{left_rotation:[0f,0.5f,0f,0.866f],right_rotation:[0.707f,0f,0f,0.707f],translation:[0f,0.05f,0f],scale:[3f,0.2f,3f]}}
    execute if score @s 9H.ProjectileTick matches 21 run data merge entity @s {start_interpolation:0,interpolation_duration:10,transformation:{left_rotation:[0f,0.707f,0f,0.707f],right_rotation:[0.707f,0f,0f,0.707f],translation:[0f,0.05f,0f],scale:[4.5f,0.2f,4.5f]}}
    execute if score @s 9H.ProjectileTick matches 31 run data merge entity @s {start_interpolation:0,interpolation_duration:10,transformation:{left_rotation:[0f,0.866f,0f,0.5f],right_rotation:[0.707f,0f,0f,0.707f],translation:[0f,0.05f,0f],scale:[6f,0.2f,6f]}}

# VFX 表示
    execute store result storage asset:temp 9H.Num int 1 run scoreboard players get @s 9H.ProjectileTick
    function asset:mob/0341.louvert/tick/projectile/fire_magic/vfx/m with storage asset:temp 9H

# 処理
    execute if score @s 9H.ProjectileTick matches 41 run function asset:mob/0341.louvert/tick/projectile/fire_magic/3.cast

# リセット
    data remove storage asset:temp 9H.Num