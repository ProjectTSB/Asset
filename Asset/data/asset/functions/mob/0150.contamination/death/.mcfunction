#> asset:mob/0150.contamination/death/
#
# Mobの死亡時の処理
#
# @within function asset:mob/alias/150/death

# 演出
    playsound minecraft:entity.generic.extinguish_fire hostile @a ~ ~ ~ 1 0.7
    playsound minecraft:entity.generic.extinguish_fire hostile @a ~ ~ ~ 1 1
    playsound minecraft:entity.generic.extinguish_fire hostile @a ~ ~ ~ 1 1.7
