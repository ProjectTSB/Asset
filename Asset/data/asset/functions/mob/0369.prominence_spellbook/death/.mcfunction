#> asset:mob/0369.prominence_spellbook/death/
#
# Mobの死亡時の処理
#
# @within function asset:mob/alias/369/death

# 演出
    particle flame ~ ~1.68 ~ 0 0 0 0.15 35 normal @a
    particle large_smoke ~ ~1.68 ~ 0 0 0 0.15 15 normal @a
    playsound minecraft:entity.zombie.break_wooden_door hostile @a ~ ~ ~ 0.6 0.7
