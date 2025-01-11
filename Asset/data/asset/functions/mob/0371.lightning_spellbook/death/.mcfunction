#> asset:mob/0371.lightning_spellbook/death/
#
# Mobの死亡時の処理
#
# @within function asset:mob/alias/371/death

# 演出
    particle wax_off ~ ~1.68 ~ 0 0 0 20 35 normal @a
    playsound minecraft:entity.zombie.break_wooden_door hostile @a ~ ~ ~ 0.6 0.7
