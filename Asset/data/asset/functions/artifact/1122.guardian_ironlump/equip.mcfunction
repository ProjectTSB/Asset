#> asset:artifact/1122.guardian_ironlump/equip
#
# 神器の装備時の処理
#
# @within function asset:artifact/alias/1122/equip

# 演出
    particle block iron_block ~ ~1 ~ 0.3 0.3 0.3 0 20
    playsound entity.iron_golem.death player @a ~ ~ ~ 1 2
    playsound minecraft:entity.skeleton.converted_to_stray player @a ~ ~ ~ 1 0
    playsound ogg:block.smithing_table.smithing_table2 player @a ~ ~ ~ 1 1
    playsound minecraft:item.armor.equip_iron player @a ~ ~ ~ 1 1
