#> asset:object/2212.eclael_upper_shot/tick/effect_line
#
# Objectのtick時の処理
#
# @within asset:object/2212.eclael_upper_shot/tick/

# 演出
    scoreboard players add @s 2212.EffectTimer 1
    execute if entity @s[scores={2212.EffectTimer=1}] run data merge entity @s {interpolation_duration:3,start_interpolation:0,transformation:{left_rotation:{axis:[1f,0f,0f],angle:-1.5708f},right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[19f,200f,19f]},text:'[{"text":"b","font":"object/2208/0"}]'}
    execute if entity @s[scores={2212.EffectTimer=4}] run data merge entity @s {interpolation_duration:16,start_interpolation:0,transformation:{left_rotation:{axis:[1f,0f,0f],angle:-1.5708f},right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[25f,200f,25f]},text:'[{"text":"b","font":"object/2208/0"}]'}
    execute if entity @s[scores={2212.EffectTimer=1}] run data modify entity @s text_opacity set value 255
    execute if entity @s[scores={2212.EffectTimer=9}] run data modify entity @s text_opacity set value 180
    execute if entity @s[scores={2212.EffectTimer=12}] run data modify entity @s text_opacity set value 130
    execute if entity @s[scores={2212.EffectTimer=15}] run data modify entity @s text_opacity set value 100
    execute if entity @s[scores={2212.EffectTimer=18}] run data modify entity @s text_opacity set value 70
    execute if entity @s[scores={2212.EffectTimer=21}] run data merge entity @s {interpolation_duration:3,start_interpolation:0,transformation:{left_rotation:{axis:[1f,0f,0f],angle:-1.5708f},right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[10f,200f,10f]},text:'[{"text":""}]',text_opacity:255}
