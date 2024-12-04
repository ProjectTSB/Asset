#> asset:artifact/0625.flame_armor/equip
#
# 装備時に実行される処理
#
# @within function asset:artifact/alias/625/equip

# 演出
    particle flame ~ ~1.3 ~ 0.4 0.3 0.4 0 10 normal @a
    playsound minecraft:entity.blaze.shoot player @a ~ ~ ~ 0.4 1
