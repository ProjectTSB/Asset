#> asset:object/2117.heiloang_tornado/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2117/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 予告
    execute if entity @s[scores={General.Object.Tick=1}] run function asset:object/2117.heiloang_tornado/tick/prediction

# 吸引
    execute if entity @s[scores={General.Object.Tick=..38}] run function asset:object/2117.heiloang_tornado/tick/move_0
    execute if entity @s[scores={General.Object.Tick=39..60}] if predicate api:global_vars/difficulty/max/normal run function asset:object/2117.heiloang_tornado/tick/move_0
    execute if entity @s[scores={General.Object.Tick=39..60}] if predicate api:global_vars/difficulty/min/hard run function asset:object/2117.heiloang_tornado/tick/move_1
# ダメージ
    execute if entity @s[scores={General.Object.Tick=61}] run function asset:object/2117.heiloang_tornado/tick/attack

# 浮遊演出
    execute if entity @s[scores={General.Object.Tick=68..189}] run function asset:object/2117.heiloang_tornado/tick/particle
    execute if entity @s[scores={General.Object.Tick=62}] run function asset:object/2117.heiloang_tornado/tick/particle_ring
    execute if entity @s[scores={General.Object.Tick=64}] run function asset:object/2117.heiloang_tornado/tick/particle_ring
    execute if entity @s[scores={General.Object.Tick=66}] run function asset:object/2117.heiloang_tornado/tick/particle_ring

# 消滅処理
    kill @s[scores={General.Object.Tick=180..}]
