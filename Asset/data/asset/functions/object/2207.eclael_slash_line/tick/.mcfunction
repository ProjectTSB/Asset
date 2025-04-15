#> asset:object/2207.eclael_slash_line/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2207/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 攻撃
    execute if entity @s[scores={General.Object.Tick=24}] positioned ^ ^ ^-20 run function asset:object/2207.eclael_slash_line/tick/attack
    execute if entity @s[scores={General.Object.Tick=26}] positioned ^ ^ ^0 run function asset:object/2207.eclael_slash_line/tick/attack
    execute if entity @s[scores={General.Object.Tick=28}] positioned ^ ^ ^20 run function asset:object/2207.eclael_slash_line/tick/attack

# 演出
    execute if entity @s[scores={General.Object.Tick=20}] positioned ^ ^ ^-25 run function asset:object/2207.eclael_slash_line/tick/effect_check
    execute if entity @s[scores={General.Object.Tick=20}] positioned ^ ^ ^-22 run function asset:object/2207.eclael_slash_line/tick/effect_check
    execute if entity @s[scores={General.Object.Tick=21}] positioned ^ ^ ^-19 run function asset:object/2207.eclael_slash_line/tick/effect_check
    execute if entity @s[scores={General.Object.Tick=21}] positioned ^ ^ ^-16 run function asset:object/2207.eclael_slash_line/tick/effect_check
    execute if entity @s[scores={General.Object.Tick=22}] positioned ^ ^ ^-13 run function asset:object/2207.eclael_slash_line/tick/effect_check
    execute if entity @s[scores={General.Object.Tick=22}] positioned ^ ^ ^-10 run function asset:object/2207.eclael_slash_line/tick/effect_check
    execute if entity @s[scores={General.Object.Tick=23}] positioned ^ ^ ^-7 run function asset:object/2207.eclael_slash_line/tick/effect_check
    execute if entity @s[scores={General.Object.Tick=23}] positioned ^ ^ ^-4 run function asset:object/2207.eclael_slash_line/tick/effect_check
    execute if entity @s[scores={General.Object.Tick=24}] positioned ^ ^ ^-1 run function asset:object/2207.eclael_slash_line/tick/effect_check
    execute if entity @s[scores={General.Object.Tick=24}] positioned ^ ^ ^2 run function asset:object/2207.eclael_slash_line/tick/effect_check
    execute if entity @s[scores={General.Object.Tick=25}] positioned ^ ^ ^5 run function asset:object/2207.eclael_slash_line/tick/effect_check
    execute if entity @s[scores={General.Object.Tick=25}] positioned ^ ^ ^8 run function asset:object/2207.eclael_slash_line/tick/effect_check
    execute if entity @s[scores={General.Object.Tick=26}] positioned ^ ^ ^11 run function asset:object/2207.eclael_slash_line/tick/effect_check
    execute if entity @s[scores={General.Object.Tick=26}] positioned ^ ^ ^14 run function asset:object/2207.eclael_slash_line/tick/effect_check
    execute if entity @s[scores={General.Object.Tick=27}] positioned ^ ^ ^17 run function asset:object/2207.eclael_slash_line/tick/effect_check
    execute if entity @s[scores={General.Object.Tick=27}] positioned ^ ^ ^20 run function asset:object/2207.eclael_slash_line/tick/effect_check
    execute if entity @s[scores={General.Object.Tick=28}] positioned ^ ^ ^23 run function asset:object/2207.eclael_slash_line/tick/effect_check

# モデル変更
    execute if entity @s[scores={General.Object.Tick=23}] run data merge entity @s {interpolation_duration:3,start_interpolation:0,transformation:{left_rotation:{axis:[1f,0f,0f],angle:-1.5708f},right_rotation:[0f,0f,0f,1f],translation:[0f,0.1f,0f],scale:[3f,40f,3f]}}
    execute if entity @s[scores={General.Object.Tick=24..31}] run function asset:object/2207.eclael_slash_line/tick/effect_line
    # execute if entity @s[scores={General.Object.Tick=24}] run data modify entity @s text set value '{"text":"1","font":"object/2208/0"}'
    # execute if entity @s[scores={General.Object.Tick=25}] run data modify entity @s text set value '{"text":"2","font":"object/2208/0"}'
    # execute if entity @s[scores={General.Object.Tick=26}] run data modify entity @s text set value '{"text":"3","font":"object/2208/0"}'
    # execute if entity @s[scores={General.Object.Tick=29}] run data modify entity @s text set value '{"text":"4","font":"object/2208/0"}'
    # execute if entity @s[scores={General.Object.Tick=31}] run data modify entity @s text set value '{"text":"5","font":"object/2208/0"}'
    execute if entity @s[scores={General.Object.Tick=33}] run data merge entity @s {interpolation_duration:8,start_interpolation:0,transformation:{left_rotation:{axis:[1f,0f,0f],angle:-1.5708f},right_rotation:[0f,0f,0f,1f],translation:[0f,0.1f,20f],scale:[0f,40f,0f]}}
    execute if entity @s[scores={General.Object.Tick=23}] on passengers run data merge entity @s {interpolation_duration:3,start_interpolation:0,transformation:{left_rotation:{axis:[1f,0f,0f],angle:-1.5708f},right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[12f,300f,12f]}}
    # execute if entity @s[scores={General.Object.Tick=26}] on passengers run data merge entity @s {interpolation_duration:10,start_interpolation:0,transformation:{left_rotation:{axis:[1,0,0],angle:-1.5708f},right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[15f,300f,15f]}}
    execute if entity @s[scores={General.Object.Tick=26}] on passengers run data modify entity @s text_opacity set value 255
    execute if entity @s[scores={General.Object.Tick=30}] on passengers run data modify entity @s text_opacity set value 180
    execute if entity @s[scores={General.Object.Tick=34}] on passengers run data modify entity @s text_opacity set value 100
    execute if entity @s[scores={General.Object.Tick=37}] on passengers run data modify entity @s text_opacity set value 60
    execute if entity @s[scores={General.Object.Tick=26}] on passengers run data merge entity @s {interpolation_duration:12,start_interpolation:0,transformation:{left_rotation:{axis:[1f,0f,0f],angle:-1.5708f},right_rotation:[0f,0f,0f,1f],translation:[0f,0f,30f],scale:[15f,100f,15f]}}

# 消滅処理
    execute if entity @s[scores={General.Object.Tick=40..}] on passengers run kill @s
    kill @s[scores={General.Object.Tick=41..}]
