#> asset:artifact/0629.ice_armor/equip
#
# 装備時に実行される処理
#
# @within function asset:artifact/alias/629/equip

# 演出
    particle falling_dust diamond_block ~ ~1.4 ~ 0.4 0.2 0.4 0 7 normal @a
    particle falling_dust snow_block ~ ~1.4 ~ 0.4 0.2 0.4 0 7 normal @a
    playsound block.glass.break player @a ~ ~ ~ 0.4 1.2 0
