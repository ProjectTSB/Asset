#> asset:object/2182.heiloang_thunderball/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2182/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# プレイヤーロックオン
    execute if entity @s[scores={General.Object.Tick=1}] run function asset:object/2182.heiloang_thunderball/tick/set_player
    execute if entity @s[scores={General.Object.Tick=3..}] run function asset:object/2182.heiloang_thunderball/tick/get_player

# 消滅処理
    execute if entity @s[scores={General.Object.Tick=120..}] run function asset:object/2182.heiloang_thunderball/tick/damage
