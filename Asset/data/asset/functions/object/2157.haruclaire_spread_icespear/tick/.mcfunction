#> asset:object/2157.haruclaire_spread_icespear/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2157/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 拡大
    execute if entity @s[scores={General.Object.Tick=3}] run function asset:object/2157.haruclaire_spread_icespear/tick/show
    execute if entity @s[scores={General.Object.Tick=3..63}] run particle end_rod ~ ~2 ~ 0.5 1 0.5 0.05 1

# 予告
    execute if entity @s[scores={General.Object.Tick=3}] run function asset:object/2157.haruclaire_spread_icespear/tick/prediction_vector
    execute if entity @s[scores={General.Object.Tick=3..63}] at @s on passengers run function asset:object/2157.haruclaire_spread_icespear/tick/effect_vector
    execute if entity @s[scores={General.Object.Tick=13}] if predicate api:global_vars/difficulty/max/normal run function asset:object/2157.haruclaire_spread_icespear/tick/prediction_line
    execute if entity @s[scores={General.Object.Tick=43}] if predicate api:global_vars/difficulty/min/hard run function asset:object/2157.haruclaire_spread_icespear/tick/prediction_line_hard

# 攻撃
    execute if entity @s[scores={General.Object.Tick=63}] run function asset:object/2157.haruclaire_spread_icespear/tick/attack

# 消滅処理
    execute if entity @s[scores={General.Object.Tick=63..}] run function asset:object/2157.haruclaire_spread_icespear/tick/kill
