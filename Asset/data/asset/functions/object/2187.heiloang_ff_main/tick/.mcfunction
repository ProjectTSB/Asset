#> asset:object/2187.heiloang_ff_main/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2187/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# フェーズ1
    execute if entity @s[scores={General.Object.Tick=..30}] run function asset:object/2187.heiloang_ff_main/tick/phase_1

# フェーズ2
    execute if entity @s[scores={General.Object.Tick=31..84}] run function asset:object/2187.heiloang_ff_main/tick/phase_2

# フェーズ3
    execute if entity @s[scores={General.Object.Tick=85..}] run function asset:object/2187.heiloang_ff_main/tick/phase_3

# 消滅処理
    execute if entity @s[scores={General.Object.Tick=135..}] run function asset:object/2187.heiloang_ff_main/tick/kill
