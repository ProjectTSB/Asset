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

# 消滅処理
    kill @s[scores={General.Object.Tick=29..}]
