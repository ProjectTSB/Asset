#> asset:artifact/0979.water_charm/equip/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/979/equip/

    playsound ogg:block.smithing_table.smithing_table2 player @a ~ ~ ~ 1 1.3
    playsound minecraft:item.armor.equip_iron player @a ~ ~ ~ 1 1
    particle minecraft:dust 0.298 0.471 0.945 1 ~ ~1 ~ 0.2 0.2 0.2 0 20
    particle crit ~ ~1 ~ 0 0 0 0.5 10

# 補正を追加
    function asset:artifact/0979.water_charm/equip/add_modifier