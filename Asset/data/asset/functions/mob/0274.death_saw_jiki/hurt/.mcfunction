#> asset:mob/0274.death_saw_jiki/hurt/
#
# Mobの被ダメージ時の処理
#
# @within function asset:mob/alias/274/hurt

# 演出
    playsound minecraft:entity.firework_rocket.twinkle_far hostile @a ~ ~ ~ 0.72 2
    particle electric_spark ~ ~ ~ 0.5 0.4 0.5 1 20 normal
