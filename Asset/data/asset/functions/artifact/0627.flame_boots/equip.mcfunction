#> asset:artifact/0627.flame_boots/equip
#
# 装備時に実行される処理
#
# @within function asset:artifact/alias/627/equip

# 演出
    particle flame ~ ~0.3 ~ 0.4 0.2 0.4 0 10 normal @a
    playsound minecraft:entity.blaze.shoot player @a ~ ~ ~ 0.4 1
