#> asset:mob/0354.rubiel_scythe/tick/app/1.move
#
# Mobが生きている間毎tick実行されるfunction
#
# @within function asset:mob/0354.rubiel_scythe/tick/2.tick

# 移動
    tp @s ^ ^ ^0.5

# 演出
    particle dust 100000000 0.6 0.6 0.7 ^-1 ^ ^ 0 0 0 0 1
    particle dust 100000000 0.6 0.6 0.7 ^1 ^ ^ 0 0 0 0 1

# プレイヤーヒット時、ダメージ
    execute if score @s 9U.DamageInterval matches ..0 if entity @a[tag=!PlayerShouldInvulnerable,distance=..1.8] run function asset:mob/0354.rubiel_scythe/tick/app/2.damage
