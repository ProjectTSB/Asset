#> asset:object/2145.louvert_soul_blast/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2145/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# スコアによってDisplayを操作
    execute if score @s General.Object.Tick matches 2 run data merge entity @s {start_interpolation:0,interpolation_duration:9,transformation:{left_rotation:[0.2588f,0f,0f,0.9659f],right_rotation:[0f,0.707f,0f,0.707f],translation:[0f,0f,0f],scale:[0.2f,1.5f,1.5f]}}
    execute if score @s General.Object.Tick matches 11 run data merge entity @s {start_interpolation:0,interpolation_duration:10,transformation:{left_rotation:[0.5f,0f,0f,0.866f],right_rotation:[0f,0.707f,0f,0.707f],translation:[0f,0f,0f],scale:[0.2f,3f,3f]}}
    execute if score @s General.Object.Tick matches 21 run data merge entity @s {start_interpolation:0,interpolation_duration:10,transformation:{left_rotation:[0.707f,0f,0f,0.707f],right_rotation:[0f,0.707f,0f,0.707f],translation:[0f,0f,0f],scale:[0.2f,4.5f,4.5f]}}
    execute if score @s General.Object.Tick matches 31 run data merge entity @s {start_interpolation:0,interpolation_duration:10,transformation:{left_rotation:[0.866f,0f,0f,0.5f],right_rotation:[0f,0.707f,0f,0.707f],translation:[0f,0f,0f],scale:[0.2f,6f,6f]}}

# VFX 表示
    execute store result storage asset:temp 9K.Num int 1 run scoreboard players get @s General.Object.Tick
    function asset:object/2145.louvert_soul_blast/tick/vfx/m with storage asset:temp 9K

# 警告音
    execute if score @s General.Object.Tick matches ..40 run function asset:object/2145.louvert_soul_blast/tick/warning/

# 処理
    execute if score @s General.Object.Tick matches 41 run function asset:object/2145.louvert_soul_blast/tick/cast/

# リセット
    data remove storage asset:temp 9K.Num
