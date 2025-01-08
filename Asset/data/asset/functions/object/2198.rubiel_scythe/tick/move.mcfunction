#> asset:object/2198.rubiel_scythe/tick/move
#
# Objectのtick時の処理
#
# @within asset:object/2198.rubiel_scythe/tick/

# 移動
    tp @s ^ ^ ^0.5

# 攻撃
    execute at @s if entity @a[tag=!PlayerShouldInvulnerable,distance=..2] if score @s 2198.CoolTime matches ..0 run function asset:object/2198.rubiel_scythe/tick/attack
