#> asset:artifact/0960.heavy_charm/equip/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/960/equip/

    playsound ogg:block.smithing_table.smithing_table2 player @a ~ ~ ~ 1 1
    playsound minecraft:item.armor.equip_iron player @a ~ ~ ~ 1 1
    particle crit ~ ~1 ~ 0 0 0 0.5 10

# 補正を追加
    function asset:artifact/0960.heavy_charm/equip/add_modifier