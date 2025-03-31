#> asset:object/2156.haruclaire_icepillar/tick/show
#
# Objectのtick時の処理
#
# @within asset:object/2156.haruclaire_icepillar/tick/

# モデル表示
    data merge entity @s {start_interpolation:0,interpolation_duration:8,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,-2.2f,0f],scale:[2f,2f,2f]}}
    execute on passengers run data merge entity @s {start_interpolation:0,interpolation_duration:8,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,2f,2f]}}

# 演出
    particle flash ~ ~-1 ~ 0 0 0 0 1
    particle firework ~ ~-1 ~ 0 0 0 0.2 10
    playsound item.trident.return hostile @a ~ ~ ~ 1 1.5
