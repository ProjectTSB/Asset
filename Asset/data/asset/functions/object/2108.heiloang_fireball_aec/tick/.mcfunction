#> asset:object/2108.heiloang_fireball_aec/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2108/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 演出
    execute if predicate lib:random_pass_per/80 run particle smoke ~ ~1.5 ~ 3 0 3 0 1
    execute if predicate lib:random_pass_per/15 run particle lava ~ ~0.5 ~ 3 0 3 0 1

# ダメージ
    execute unless entity @s[tag=2108.IsDark] run function asset:object/2108.heiloang_fireball_aec/tick/particle
    execute if entity @s[tag=2108.IsDark] run function asset:object/2108.heiloang_fireball_aec/tick/particle_blue
    execute if entity @s[scores={General.Object.Tick=20..,2108.DamageInterval=..0}] if entity @a[tag=!PlayerShouldInvulnerable,distance=..6] run function asset:object/2108.heiloang_fireball_aec/tick/damage
    execute if entity @s[scores={2108.DamageInterval=1..}] run scoreboard players remove @s 2108.DamageInterval 1

# 消滅処理
    kill @s[scores={General.Object.Tick=500..}]
