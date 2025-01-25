#> asset:artifact/0978.fire_charm/equip/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/978/equip/

    playsound ogg:block.smithing_table.smithing_table2 player @a ~ ~ ~ 1 1.3
    playsound minecraft:item.armor.equip_iron player @a ~ ~ ~ 1 1
    particle minecraft:dust 1 0.451 0 1 ~ ~1 ~ 0.2 0.2 0.2 0 20
    particle crit ~ ~1 ~ 0 0 0 0.5 10

# 補正を追加
    function asset:artifact/0978.fire_charm/equip/add_modifier