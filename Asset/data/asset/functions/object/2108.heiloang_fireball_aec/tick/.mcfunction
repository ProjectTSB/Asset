#> asset:object/2108.heiloang_fireball_aec/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2108/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# ダメージ
    execute if score @s 2108.DamageInterval matches ..0 if entity @a[tag=!PlayerShouldInvulnerable,distance=..6] run function asset:object/2108.heiloang_fireball_aec/tick/damage
    execute if score @s 2108.DamageInterval matches 1.. run scoreboard players remove @s 2108.DamageInterval 1

# 消滅処理
    kill @s[scores={General.Object.Tick=300..}]
