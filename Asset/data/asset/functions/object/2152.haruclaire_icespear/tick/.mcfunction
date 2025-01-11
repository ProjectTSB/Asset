#> asset:object/2152.haruclaire_icespear/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2152/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 拡大
    execute if entity @s[scores={General.Object.Tick=3}] run function asset:object/2152.haruclaire_icespear/tick/show

# ダメージ
    execute if entity @s[scores={General.Object.Tick=1}] run function asset:object/2152.haruclaire_icespear/tick/attack

# 消滅処理
    execute if entity @s[scores={General.Object.Tick=20..}] run function asset:object/2152.haruclaire_icespear/tick/kill
