#> asset:artifact/0624.flame_helm/equip
#
# 装備時に実行される処理
#
# @within function asset:artifact/alias/624/equip

# 演出
    particle flame ~ ~1.6 ~ 0.4 0.2 0.4 0 10 normal @a
    playsound minecraft:entity.blaze.shoot player @a ~ ~ ~ 0.4 1
