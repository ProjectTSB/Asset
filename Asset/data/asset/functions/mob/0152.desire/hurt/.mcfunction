#> asset:mob/0152.desire/hurt/
#
# Mobの被ダメージ時の処理
#
# @within function asset:mob/alias/152/hurt

# 演出
    particle minecraft:cloud ~ ~1.3 ~ 0 0 0 0.05 4
    particle dragon_breath ~ ~1.3 ~ 0 0 0 0.05 4
    playsound minecraft:entity.evoker.cast_spell hostile @a ~ ~ ~ 0.7 1
    playsound minecraft:entity.evoker.cast_spell hostile @a ~ ~ ~ 0.7 0.8
    playsound minecraft:entity.evoker.cast_spell hostile @a ~ ~ ~ 0.7 0.6
