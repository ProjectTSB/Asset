#> asset:mob/0049.ice_obstructor/death/
#
# Mobの死亡時の処理
#
# @within function asset:mob/alias/49/death

# 演出
    playsound minecraft:block.glass.break hostile @a ~ ~ ~ 1.2 1.3 0
    particle falling_dust diamond_block ~ ~1 ~ 0.5 0.5 0.5 1 12 normal @a
    particle falling_dust snow_block ~ ~1 ~ 0.5 0.5 0.5 1 12 normal @a
