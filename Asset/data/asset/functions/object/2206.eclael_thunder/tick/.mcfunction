#> asset:object/2206.eclael_thunder/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2206/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 攻撃
    execute if entity @s[scores={General.Object.Tick=31}] run function asset:object/2206.eclael_thunder/tick/damage

# モデル変更
    execute if entity @s[scores={General.Object.Tick=32}] run data modify entity @s transformation set value {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,-1f,0f],scale:[6f,6f,1f]}
    execute if entity @s[scores={General.Object.Tick=32}] run data modify entity @s text set value '{"text":"1","font":"object/2206/0"}'
    execute if entity @s[scores={General.Object.Tick=33}] run data modify entity @s text set value '{"text":"2","font":"object/2206/0"}'
    execute if entity @s[scores={General.Object.Tick=34}] run data modify entity @s text set value '{"text":"3","font":"object/2206/0"}'
    execute if entity @s[scores={General.Object.Tick=35}] run data modify entity @s text set value '{"text":"4","font":"object/2206/0"}'
    execute if entity @s[scores={General.Object.Tick=36}] run data modify entity @s text set value '{"text":"5","font":"object/2206/0"}'
    execute if entity @s[scores={General.Object.Tick=37}] run data modify entity @s text set value '{"text":"4","font":"object/2206/0"}'
    execute if entity @s[scores={General.Object.Tick=38}] if predicate lib:random_pass_per/50 run function asset:object/2206.eclael_thunder/tick/kill
    execute if entity @s[scores={General.Object.Tick=38}] run data modify entity @s text set value '{"text":"5","font":"object/2206/0"}'

    execute if entity @s[scores={General.Object.Tick=32}] on passengers run data modify entity @s transformation set value [3.0000f,0.0000f,0.0000f,0.0000f,0.0000f,-0.0000f,3.0000f,-0.1875f,0.0000f,-3.0000f,-0.0000f,5.0000f,0.0000f,0.0000f,0.0000f,1.0000f]
    execute if entity @s[scores={General.Object.Tick=32}] on passengers run data modify entity @s text set value '{"text":"1","font":"object/2206/1"}'
    execute if entity @s[scores={General.Object.Tick=33}] on passengers run data modify entity @s text set value '{"text":"2","font":"object/2206/1"}'
    execute if entity @s[scores={General.Object.Tick=34}] on passengers run data modify entity @s text set value '{"text":"3","font":"object/2206/1"}'
    execute if entity @s[scores={General.Object.Tick=35}] on passengers run data modify entity @s text set value '{"text":"4","font":"object/2206/1"}'
    execute if entity @s[scores={General.Object.Tick=36}] on passengers run data modify entity @s text set value '{"text":"5","font":"object/2206/1"}'
    execute if entity @s[scores={General.Object.Tick=37}] on passengers run data modify entity @s text set value '{"text":"4","font":"object/2206/1"}'
    execute if entity @s[scores={General.Object.Tick=38}] on passengers run data modify entity @s text set value '{"text":"5","font":"object/2206/1"}'

# 消滅処理
    execute if entity @s[scores={General.Object.Tick=39..}] run function asset:object/2206.eclael_thunder/tick/kill
