#> asset:mob/0152.desire/hurt/2.hurt
#
# Mobの被ダメージ時の処理
#
# @within function asset:mob/0152.desire/hurt/1.trigger

# 演出
    particle minecraft:cloud ~ ~1.3 ~ 0 0 0 0.05 20
    particle dragon_breath ~ ~1.3 ~ 0 0 0 0.05 30
    playsound minecraft:entity.evoker.cast_spell hostile @a ~ ~ ~ 0.7 1
    playsound minecraft:entity.evoker.cast_spell hostile @a ~ ~ ~ 0.7 0.8
    playsound minecraft:entity.evoker.cast_spell hostile @a ~ ~ ~ 0.7 0.6