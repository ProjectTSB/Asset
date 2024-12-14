#> asset:object/2123.heiloang_flare/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2123/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 予告
    execute if entity @s[scores={General.Object.Tick=1}] run function asset:object/2123.heiloang_flare/tick/prediction

# 攻撃
    execute if entity @s[scores={General.Object.Tick=105}] run function asset:object/2123.heiloang_flare/tick/damage
    execute if entity @s[scores={General.Object.Tick=135}] run function asset:object/2123.heiloang_flare/tick/damage
    execute if entity @s[scores={General.Object.Tick=165}] run function asset:object/2123.heiloang_flare/tick/damage
    execute if entity @s[scores={General.Object.Tick=195}] run function asset:object/2123.heiloang_flare/tick/damage
    execute if entity @s[scores={General.Object.Tick=225}] run function asset:object/2123.heiloang_flare/tick/damage
    execute if entity @s[scores={General.Object.Tick=255}] run function asset:object/2123.heiloang_flare/tick/damage
    execute if entity @s[scores={General.Object.Tick=285}] run function asset:object/2123.heiloang_flare/tick/damage

# 消滅処理
    execute if entity @s[scores={General.Object.Tick=100..}] on passengers run kill @s
    kill @s[scores={General.Object.Tick=286..}]
