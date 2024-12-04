#> asset:artifact/1066.weight_stone/equip
#
# 装備時に実行される処理
#
# @within function asset:artifact/alias/1066/equip

# 演出
    playsound block.stone.break player @a[distance=..5] ~ ~ ~ 1 0
    playsound block.stone.break player @a[distance=..5] ~ ~ ~ 1 0
    playsound block.stone.break player @a[distance=..5] ~ ~ ~ 1 0
    playsound block.gravel.break player @a[distance=..5] ~ ~ ~ 0.8 0 0
    particle block stone ~ ~0.2 ~ 0.4 0 0.4 0 30 normal
