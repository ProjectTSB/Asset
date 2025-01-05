#> asset:mob/0370.wave_spellbook/death/
#
# Mobの死亡時の処理
#
# @within function asset:mob/alias/370/death

# 演出
    particle rain ~ ~1.68 ~ 0 0 0 0.15 100 normal @a
    playsound minecraft:entity.zombie.break_wooden_door hostile @a ~ ~ ~ 0.6 0.7
