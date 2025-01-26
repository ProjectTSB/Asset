#> asset:object/2152.haruclaire_icespear/tick/show
#
# Objectのtick時の処理
#
# @within asset:object/2152.haruclaire_icespear/tick/

# 大きさをランダムで変更
    execute if predicate lib:random_pass_per/30 run return run data merge entity @s {start_interpolation:0,interpolation_duration:3,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.8f,3.2f,1.8f]}}
    execute if predicate lib:random_pass_per/30 run return run data merge entity @s {start_interpolation:0,interpolation_duration:3,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.5f,2.6f,1.5f]}}
    data merge entity @s {start_interpolation:0,interpolation_duration:3,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.2f,3.0f,1.2f]}}
