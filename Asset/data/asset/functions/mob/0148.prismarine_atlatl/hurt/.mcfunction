#> asset:mob/0148.prismarine_atlatl/hurt/
#
# Mobの被ダメージ時の処理
#
# @within function asset:mob/alias/148/hurt

# 演出
    particle splash ~ ~1.2 ~ 0.4 0.5 0.4 0 50 normal @a
    playsound minecraft:entity.guardian.hurt hostile @a ~ ~ ~ 0.6 1 0
    playsound minecraft:entity.generic.swim hostile @a ~ ~ ~ 0.5 0.7 0
