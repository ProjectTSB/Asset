#> asset:object/2064.black_penalty_bullet/tick/rotate/4
#
# 縮小
#
# @within function asset:object/2064.black_penalty_bullet/tick/

# 回転 / 30tick
    data merge entity @s {start_interpolation:0,interpolation_duration:30,transformation:{left_rotation:[0f,0f,-0.866f,0.5f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0f,0f,0.01f]}}
    execute on passengers run data merge entity @s {start_interpolation:0,interpolation_duration:30,transformation:{left_rotation:[0f,0f,0.866f,0.5f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.1f,0f],scale:[0f,0f,0.01f]}}
    execute on passengers on passengers run data merge entity @s {start_interpolation:0,interpolation_duration:30,transformation:{left_rotation:[0f,0f,-0.866f,0.5f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0f,0f,0.01f]}}
