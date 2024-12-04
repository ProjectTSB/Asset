#> asset:artifact/0708.mage_robe_upper/equip
#
# 装備時に実行される処理
#
# @within function asset:artifact/alias/708/equip

# 演出
    particle witch ~ ~1.3 ~ 0.3 0.25 0.3 1 10 normal @a
    particle enchant ~ ~1.3 ~ 0.4 0.25 0.4 0 30 normal @a
    playsound minecraft:block.enchantment_table.use player @a ~ ~ ~ 0.8 0 0
