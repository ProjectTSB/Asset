#> asset:object/2111.heiloang_thunder/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2111/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 攻撃
    particle firework ~ ~ ~ 1 1 1 0.05 5
    execute if entity @s[scores={General.Object.Tick=20..}] run function asset:object/2111.heiloang_thunder/tick/attack

# 消滅処理
    kill @s[scores={General.Object.Tick=200..}]
