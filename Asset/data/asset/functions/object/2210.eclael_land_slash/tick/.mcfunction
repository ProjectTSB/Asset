#> asset:object/2210.eclael_land_slash/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2210/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 攻撃
    execute if entity @s[scores={General.Object.Tick=4}] positioned ^ ^ ^5 run function asset:object/2210.eclael_land_slash/tick/attack
    execute if entity @s[scores={General.Object.Tick=5}] positioned ^ ^ ^15 run function asset:object/2210.eclael_land_slash/tick/attack
    execute if entity @s[scores={General.Object.Tick=6}] positioned ^ ^ ^25 run function asset:object/2210.eclael_land_slash/tick/attack

# モデル変更
    execute if entity @s[scores={General.Object.Tick=3}] run data merge entity @s {interpolation_duration:3,start_interpolation:0,transformation:{left_rotation:{axis:[1f,0f,0f],angle:-1.5708f},right_rotation:[0f,0f,0f,1f],translation:[0f,0f,20f],scale:[5f,12f,5f]}}
    execute if entity @s[scores={General.Object.Tick=4}] run data modify entity @s text set value '{"text":"1","font":"object/2208/0"}'
    execute if entity @s[scores={General.Object.Tick=5}] run data modify entity @s text set value '{"text":"2","font":"object/2208/0"}'
    execute if entity @s[scores={General.Object.Tick=6}] run data modify entity @s text_opacity set value 255
    execute if entity @s[scores={General.Object.Tick=9}] run data modify entity @s text_opacity set value 190
    execute if entity @s[scores={General.Object.Tick=12}] run data modify entity @s text_opacity set value 120
    execute if entity @s[scores={General.Object.Tick=15}] run data modify entity @s text_opacity set value 80
    execute if entity @s[scores={General.Object.Tick=18}] run data modify entity @s text_opacity set value 20

# 消滅処理
    kill @s[scores={General.Object.Tick=20..}]
