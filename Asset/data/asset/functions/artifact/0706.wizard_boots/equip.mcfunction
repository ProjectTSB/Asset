#> asset:artifact/0706.wizard_boots/equip
#
# 装備時に実行される処理
#
# @within function asset:artifact/alias/706/equip

# 演出
    particle witch ~ ~0.3 ~ 0.3 0.1 0.3 1 10 normal @a
    playsound minecraft:block.enchantment_table.use player @a ~ ~ ~ 0.8 1
