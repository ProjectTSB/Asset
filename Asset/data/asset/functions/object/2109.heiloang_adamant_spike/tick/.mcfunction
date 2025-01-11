#> asset:object/2109.heiloang_adamant_spike/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2109/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 継承元処理を実行
    execute if entity @s[scores={General.Object.Tick=40..}] run function asset:object/super.tick

# 独自処理
    execute if entity @s[scores={General.Object.Tick=5}] run data merge entity @s {start_interpolation:0,transformation:{left_rotation:[1f,0f,0f,0f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[4f,4f,4f]}}
    execute if entity @s[scores={General.Object.Tick=40}] run function asset:object/2109.heiloang_adamant_spike/tick/shoot
    particle firework ~ ~ ~ 0.3 0.3 0.3 0.05 1 force

# ダメージ
    execute if entity @s[scores={2109.DamageInterval=..0}] positioned ~ ~-1 ~ if entity @a[tag=!PlayerShouldInvulnerable,distance=..3.3] run function asset:object/2109.heiloang_adamant_spike/tick/damage
    execute if entity @s[scores={2109.DamageInterval=1..}] run scoreboard players remove @s 2109.DamageInterval 1

# 消滅処理
    kill @s[scores={General.Object.Tick=300..}]
