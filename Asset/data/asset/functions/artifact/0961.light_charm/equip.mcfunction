#> asset:artifact/0961.light_charm/equip
#
# 装備時に実行される処理
#
# @within function asset:artifact/alias/961/equip

# 演出
    playsound ogg:block.smithing_table.smithing_table2 player @a ~ ~ ~ 1 1.6
    playsound minecraft:item.armor.equip_iron player @a ~ ~ ~ 1 1
    particle crit ~ ~1 ~ 0 0 0 0.5 10
