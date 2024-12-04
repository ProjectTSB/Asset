#> asset:artifact/0707.mage_hat/equip
#
# 装備時に実行される処理
#
# @within function asset:artifact/alias/707/equip

# 演出
    particle witch ~ ~1.7 ~ 0.3 0.1 0.3 1 10 normal @a
    particle enchant ~ ~1.7 ~ 0.4 0.1 0.4 0 30 normal @a
    playsound minecraft:block.enchantment_table.use player @a ~ ~ ~ 0.8 0 0
