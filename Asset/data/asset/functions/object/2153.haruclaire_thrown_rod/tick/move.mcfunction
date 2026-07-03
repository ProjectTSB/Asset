#> asset:object/2153.haruclaire_thrown_rod/tick/move
#
# Objectのtick時の処理
#
# @within asset:object/2153.haruclaire_thrown_rod/tick/

# 移動
    tp @s ^ ^ ^0.5

# ブーメラン
    execute if entity @s[tag=!2153.Inverse,scores={General.Object.Tick=..8}] at @s run tp @s ^ ^ ^ ~ ~
    execute if entity @s[tag=2153.Inverse,scores={General.Object.Tick=..8}] at @s run tp @s ^ ^ ^ ~ ~
    execute if entity @s[tag=!2153.Inverse,scores={General.Object.Tick=20..29}] at @s run tp @s ^ ^ ^ ~-8 ~
    execute if entity @s[tag=2153.Inverse,scores={General.Object.Tick=20..29}] at @s run tp @s ^ ^ ^ ~8 ~
    execute if entity @s[tag=!2153.Inverse,scores={General.Object.Tick=30..40}] at @s run tp @s ^ ^ ^ ~ ~-1
    execute if entity @s[tag=2153.Inverse,scores={General.Object.Tick=30..40}] at @s run tp @s ^ ^ ^ ~ ~-1

# ブロックに衝突する場合、軌道修正
    execute at @s unless block ^ ^ ^0.5 #lib:no_collision/ run tp @s ^ ^ ^-0.5 ~ -1

# 攻撃
    execute at @s if entity @a[tag=!PlayerShouldInvulnerable,distance=..2] if score @s 2153.CoolTime matches ..0 run function asset:object/2153.haruclaire_thrown_rod/tick/attack
