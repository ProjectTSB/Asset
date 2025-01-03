#> asset:object/2126.heiloang_thunder_burst/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2126/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 攻撃
    execute if entity @s[scores={General.Object.Tick=50..}] run function asset:object/2126.heiloang_thunder_burst/tick/damage

# 消滅処理
    kill @s[scores={General.Object.Tick=1000..}]
