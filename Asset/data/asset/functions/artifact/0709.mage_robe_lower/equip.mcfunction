#> asset:artifact/0709.mage_robe_lower/equip
#
# 装備時に実行される処理
#
# @within function asset:artifact/alias/709/equip

# 演出
    particle witch ~ ~0.4 ~ 0.3 0.15 0.3 1 10 normal @a
    particle enchant ~ ~0.4 ~ 0.4 0.15 0.4 0 30 normal @a
    playsound minecraft:block.enchantment_table.use player @a ~ ~ ~ 0.8 0 0
