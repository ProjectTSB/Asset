#> asset:mob/0355.sapphiel_missile/tick/app/1.move
#
# Mobが生きている間毎tick実行されるfunction
#
# @within function asset:mob/0355.sapphiel_missile/tick/2.tick

# 移動
    tp @s ^ ^ ^0.5

# 演出
    particle campfire_cosy_smoke ~ ~ ~ 0 0 0 0.01 1

# プレイヤーまたは床に着弾時、爆発開始
    execute if entity @a[distance=..1.2] run tag @s add 9V.Death
    execute unless block ^ ^ ^0.5 #lib:no_collision run tag @s add 9V.Death
