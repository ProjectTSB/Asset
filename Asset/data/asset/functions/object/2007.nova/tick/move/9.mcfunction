#> asset:object/2007.nova/tick/move/9
#
# ノヴァを小さくする
#
# @within function asset:object/2007.nova/tick/

# 見た目を変更する
    execute on passengers run data merge entity @s {start_interpolation:0,interpolation_duration:2,transformation:{left_rotation:[0.2391f,0.0990f,-0.3696f,0.8924f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0f,0f,0f]}}
    execute on passengers on passengers run data merge entity @s {start_interpolation:0,interpolation_duration:2,transformation:{left_rotation:[0.2391f,-0.0990f,0.3696f,0.8924f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0f,0f,0f]}}
    execute on passengers on passengers on passengers run data merge entity @s {start_interpolation:0,interpolation_duration:2,transformation:{left_rotation:[0.1830f,0.6830f,0.1830f,0.6830f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0f,0f,0f]}}

# Novaの見た目（billbord）を移動
    data merge entity @e[type=item_display,tag=2007.Nova,distance=..0.001,sort=nearest,limit=1] {start_interpolation:0,interpolation_duration:2,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0f,0f,0f]}}
