#> asset:object/2209.eclael_field_slash/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2209/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 演出
    execute if entity @s[scores={General.Object.Tick=1..120}] run function asset:object/2209.eclael_field_slash/tick/prediction_text
    execute if entity @s[scores={General.Object.Tick=120}] on passengers run data modify entity @s text set value '{"text":""}'
    execute if entity @s[scores={General.Object.Tick=120}] run data modify entity @s text set value '{"text":""}'

# 攻撃
    execute if entity @s[scores={General.Object.Tick=120}] positioned ^2.3 ^ ^ rotated ~ ~ run function asset:object/2209.eclael_field_slash/tick/attack
    execute if entity @s[scores={General.Object.Tick=120}] positioned ^-2.3 ^ ^ rotated ~180 ~ run function asset:object/2209.eclael_field_slash/tick/attack_green
    execute if entity @s[scores={General.Object.Tick=170}] positioned ^7.2 ^ ^ rotated ~ ~ run function asset:object/2209.eclael_field_slash/tick/attack
    execute if entity @s[scores={General.Object.Tick=170}] positioned ^-7.2 ^ ^ rotated ~180 ~ run function asset:object/2209.eclael_field_slash/tick/attack_green
    execute if entity @s[scores={General.Object.Tick=220}] positioned ^12.1 ^ ^ rotated ~ ~ run function asset:object/2209.eclael_field_slash/tick/attack
    execute if entity @s[scores={General.Object.Tick=220}] positioned ^-12.1 ^ ^ rotated ~180 ~ run function asset:object/2209.eclael_field_slash/tick/attack_green
    execute if entity @s[scores={General.Object.Tick=270}] positioned ^17.0 ^ ^ rotated ~ ~ run function asset:object/2209.eclael_field_slash/tick/attack
    execute if entity @s[scores={General.Object.Tick=270}] positioned ^-17.0 ^ ^ rotated ~180 ~ run function asset:object/2209.eclael_field_slash/tick/attack_green
    execute if entity @s[scores={General.Object.Tick=320}] positioned ^21.9 ^ ^ rotated ~ ~ run function asset:object/2209.eclael_field_slash/tick/attack
    execute if entity @s[scores={General.Object.Tick=320}] positioned ^-21.9 ^ ^ rotated ~180 ~ run function asset:object/2209.eclael_field_slash/tick/attack_green

# 消滅処理
    execute if entity @s[scores={General.Object.Tick=321..}] on passengers run kill @s
    kill @s[scores={General.Object.Tick=321..}]
