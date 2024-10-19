#> asset:mob/0037.fire_spreader/hurt/
#
# Mobの被ダメージ時の処理
#
# @within function asset:mob/alias/37/hurt

# 演出
    playsound minecraft:entity.blaze.ambient hostile @a ~ ~ ~ 0.5 0 0
    particle smoke ~ ~1 ~ 0.6 0.6 0.6 0.025 15 normal @a
