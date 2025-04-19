#> asset:object/2211.eclael_circle_slash/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2211/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 攻撃
    execute if entity @s[scores={General.Object.Tick=26}] run playsound entity.wither.shoot hostile @a[distance=..30] ~ ~ ~ 0.7 0.7
    execute if entity @s[scores={General.Object.Tick=26}] run playsound entity.guardian.attack hostile @a ~ ~ ~ 1 1.8
    execute if entity @s[scores={General.Object.Tick=28}] positioned ^ ^ ^0 run function asset:object/2211.eclael_circle_slash/tick/attack
    execute if entity @s[scores={General.Object.Tick=31}] positioned ^ ^ ^0 run function asset:object/2211.eclael_circle_slash/tick/attack
    execute if entity @s[scores={General.Object.Tick=33}] positioned ^ ^ ^0 run function asset:object/2211.eclael_circle_slash/tick/attack

# 演出
    execute if entity @s[scores={General.Object.Tick=23}] run function asset:object/2211.eclael_circle_slash/tick/effect_start
    execute if entity @s[scores={General.Object.Tick=25}] run function asset:object/2211.eclael_circle_slash/tick/effect_start
    execute if entity @s[scores={General.Object.Tick=27}] run function asset:object/2211.eclael_circle_slash/tick/effect_start
    # execute if entity @s[scores={General.Object.Tick=29}] run function asset:object/2211.eclael_circle_slash/tick/effect_start

# モデル変更
    execute if entity @s[scores={General.Object.Tick=23}] run data merge entity @s {interpolation_duration:18,start_interpolation:0,transformation:{left_rotation:{axis:[1f,0f,0f],angle:-1.5708f},right_rotation:[0f,0f,0f,1f],translation:[0f,0f,1.5f],scale:[18.5f,18.5f,0f]},text:'[{"text":"1","font":"object/2211/0"}]'}
    execute if entity @s[scores={General.Object.Tick=31}] run data modify entity @s text set value '[{"text":"0","font":"object/2211/0"}]'
    execute if entity @s[scores={General.Object.Tick=23}] run data modify entity @s text_opacity set value 255
    execute if entity @s[scores={General.Object.Tick=29}] run data modify entity @s text_opacity set value 180
    execute if entity @s[scores={General.Object.Tick=32}] run data modify entity @s text_opacity set value 130
    execute if entity @s[scores={General.Object.Tick=35}] run data modify entity @s text_opacity set value 90
    execute if entity @s[scores={General.Object.Tick=38}] run data modify entity @s text_opacity set value 40

# 消滅処理
    kill @s[scores={General.Object.Tick=41..}]
