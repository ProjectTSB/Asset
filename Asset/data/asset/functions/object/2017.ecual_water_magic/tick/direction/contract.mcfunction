#> asset:object/2017.ecual_water_magic/tick/direction/contract
#
# 魔法陣縮小
#
# @within function asset:object/2017.ecual_water_magic/tick/

# 魔法陣縮小 / 20tick
    data merge entity @s {start_interpolation:0,interpolation_duration:30,transformation:{left_rotation:[0.3536f,-0.6124f,0.6124f,0.3536f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0f,0f,0.01f]}}
    execute on passengers run data merge entity @s {start_interpolation:0,interpolation_duration:30,transformation:{left_rotation:[0.3536f,0.6124f,-0.6124f,0.3536f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.1f,0f],scale:[0f,0f,0.01f]}}
    execute on passengers on passengers run data merge entity @s {start_interpolation:0,interpolation_duration:30,transformation:{left_rotation:[0.3536f,-0.6124f,0.6124f,0.3536f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0f,0f,0.01f]}}
