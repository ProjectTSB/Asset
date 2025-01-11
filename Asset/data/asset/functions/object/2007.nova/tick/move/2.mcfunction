#> asset:object/2007.nova/tick/move/2
#
# ノヴァを落下させる
#
# @within function asset:object/2007.nova/tick/

# 見た目を変更する
    data merge entity @s {start_interpolation:0,interpolation_duration:2,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,14.5f,0f],scale:[0f,0f,0f]}}
    execute on passengers run data merge entity @s {start_interpolation:0,interpolation_duration:2,transformation:{left_rotation:[0.2391f,0.0990f,-0.3696f,0.8924f],right_rotation:[0f,0f,0f,1f],translation:[0f,14.5f,0f],scale:[5.5f,11f,11f]}}
    execute on passengers on passengers run data merge entity @s {start_interpolation:0,interpolation_duration:2,transformation:{left_rotation:[0.2391f,-0.0990f,0.3696f,0.8924f],right_rotation:[0f,0f,0f,1f],translation:[0f,14.5f,0f],scale:[5.5f,11f,11f]}}
    execute on passengers on passengers on passengers run data merge entity @s {start_interpolation:0,interpolation_duration:2,transformation:{left_rotation:[0.1830f,0.6830f,0.1830f,0.6830f],right_rotation:[0f,0f,0f,1f],translation:[0f,14.5f,0f],scale:[5.5f,11f,11f]}}

# Novaの見た目（billboard）を移動
    execute positioned ~ ~15 ~ run tp @e[type=item_display,tag=2007.Nova,distance=..0.001,sort=nearest,limit=1] ~ ~-0.5 ~ ~ ~
