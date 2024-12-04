#> asset:artifact/0631.ice_boots/equip
#
# 装備時に実行される処理
#
# @within function asset:artifact/alias/631/equip

# 演出
    particle falling_dust diamond_block ~ ~0.3 ~ 0.4 0.1 0.4 0 5 normal @a
    particle falling_dust snow_block ~ ~0.3 ~ 0.4 0.1 0.4 0 5 normal @a
    playsound minecraft:block.glass.break player @a ~ ~ ~ 0.4 1.2 0
