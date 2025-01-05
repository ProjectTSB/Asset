#> asset:mob/0152.desire/death/
#
# Mobの死亡時の処理
#
# @within function asset:mob/alias/152/death

# 演出
    particle minecraft:cloud ~ ~1.3 ~ 0 0 0 0.3 100
    particle dragon_breath ~ ~1.3 ~ 0 0 0 0.3 150
    playsound minecraft:entity.evoker.prepare_attack hostile @a ~ ~ ~ 0.7 2
    playsound minecraft:entity.evoker.prepare_attack hostile @a ~ ~ ~ 0.7 1.75
    playsound minecraft:entity.evoker.prepare_attack hostile @a ~ ~ ~ 0.7 1.5
