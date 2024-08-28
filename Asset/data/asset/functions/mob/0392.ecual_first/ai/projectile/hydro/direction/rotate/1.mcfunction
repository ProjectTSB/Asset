#> asset:mob/0392.ecual_first/ai/projectile/hydro/direction/rotate/1
#
# 回転
#
# @within function asset:mob/0392.ecual_first/ai/projectile/hydro/2.tick

# 回転 / 10tick
    data merge entity @s {start_interpolation:0,interpolation_duration:10,transformation:{left_rotation:[0f,0f,0.866f,0.5f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[6f,6f,0.01f]}}
    execute on passengers run data merge entity @s {start_interpolation:0,interpolation_duration:10,transformation:{left_rotation:[0f,0f,-0.866f,0.5f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.01f,0f],scale:[6f,6f,0.01f]}}
