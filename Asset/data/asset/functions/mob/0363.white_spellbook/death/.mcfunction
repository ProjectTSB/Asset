#> asset:mob/0363.white_spellbook/death/
#
# Mobの死亡時の処理
#
# @within function asset:mob/alias/363/death

# 演出
    particle end_rod ~ ~1.68 ~ 0 0 0 0.15 50 normal @a
    playsound minecraft:entity.zombie.break_wooden_door hostile @a ~ ~ ~ 0.6 0.7
