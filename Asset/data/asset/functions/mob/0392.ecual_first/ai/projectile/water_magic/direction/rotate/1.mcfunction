#> asset:mob/0392.ecual_first/ai/projectile/water_magic/direction/rotate/1
#
# 回転 1回目
#
# @within function asset:mob/0392.ecual_first/ai/projectile/water_magic/2.tick

# 回転 / 20tick
    data merge entity @s {start_interpolation:-1,interpolation_duration:30,transformation:{left_rotation:[0.3536f,0.6124f,-0.6124f,0.3536f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[8f,8f,0.01f]}}
    execute on passengers run data merge entity @s {start_interpolation:-1,interpolation_duration:30,transformation:{left_rotation:[0.3536f,-0.6124f,0.6124f,0.3536f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.1f,0f],scale:[8f,8f,0.01f]}}
    execute on passengers on passengers run data merge entity @s {start_interpolation:-1,interpolation_duration:30,transformation:{left_rotation:[0.3536f,0.6124f,-0.6124f,0.3536f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[8f,8f,0.01f]}}
