#> asset:artifact/0961.light_charm/equip/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/961/equip/

    playsound ogg:block.smithing_table.smithing_table2 player @a ~ ~ ~ 1 1.6
    playsound minecraft:item.armor.equip_iron player @a ~ ~ ~ 1 1
    particle crit ~ ~1 ~ 0 0 0 0.5 10

# 補正を追加
    function asset:artifact/0961.light_charm/equip/add_modifier