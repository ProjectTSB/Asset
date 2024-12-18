#> asset:object/2021.hydro_storm/tick/direction/rotate/3
#
# 回転
#
# @within function asset:object/2021.hydro_storm/tick/

# 回転 / 10tick
    data merge entity @s {start_interpolation:0,interpolation_duration:10,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[6f,6f,0.01f]}}
    execute on passengers run data merge entity @s {start_interpolation:0,interpolation_duration:10,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.01f,0f],scale:[6f,6f,0.01f]}}
