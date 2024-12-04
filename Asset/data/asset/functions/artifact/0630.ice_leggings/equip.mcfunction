#> asset:artifact/0630.ice_leggings/equip
#
# 装備時に実行される処理
#
# @within function asset:artifact/alias/630/equip

# 演出
    particle falling_dust diamond_block ~ ~0.4 ~ 0.4 0.3 0.4 0 5 normal @a
    particle falling_dust snow_block ~ ~0.4 ~ 0.4 0.3 0.4 0 5 normal @a
    playsound minecraft:block.glass.break player @a ~ ~ ~ 0.4 1.2 0
