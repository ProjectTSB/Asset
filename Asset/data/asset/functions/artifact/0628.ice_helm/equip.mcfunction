#> asset:artifact/0628.ice_helm/equip
#
# 装備時に実行される処理
#
# @within function asset:artifact/alias/628/equip

# 演出
    particle falling_dust diamond_block ~ ~1.7 ~ 0.4 0.2 0.4 0 6 normal @a
    particle falling_dust snow_block ~ ~1.7 ~ 0.4 0.2 0.4 0 6 normal @a
    playsound minecraft:block.glass.break player @a ~ ~ ~ 0.4 1.2 0
