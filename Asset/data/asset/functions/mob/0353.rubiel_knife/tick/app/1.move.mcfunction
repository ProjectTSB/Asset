#> asset:mob/0353.rubiel_knife/tick/app/1.move
#
# Mobが生きている間毎tick実行されるfunction
#
# @within function asset:mob/0353.rubiel_knife/tick/2.tick

# 移動
    tp @s ^ ^ ^1

# 演出
    particle dust 100000000 0.6 0.6 0.7 ^ ^ ^ 0 0 0 0 1
    particle dust 100000000 0.6 0.6 0.7 ^ ^ ^0.33 0 0 0 0 1
    particle dust 100000000 0.6 0.6 0.7 ^ ^ ^0.66 0 0 0 0 1

# プレイヤーヒット時、ダメージ
    execute unless entity @s[tag=9T.DamageGiven] if entity @a[tag=!PlayerShouldInvulnerable,distance=..1.2] run function asset:mob/0353.rubiel_knife/tick/app/2.damage

# ブロックへの着弾時、消去
    execute unless block ^ ^ ^1 #lib:no_collision run playsound item.trident.hit_ground hostile @a ~ ~ ~ 1 1.5
    execute unless block ^ ^ ^1 #lib:no_collision run tag @s add 9T.Hit
    