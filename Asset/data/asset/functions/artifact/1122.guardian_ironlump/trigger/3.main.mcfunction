#> asset:artifact/1122.guardian_ironlump/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1122.guardian_ironlump/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/hotbar

# 演出
    particle block iron_block ~ ~1 ~ 0.3 0.3 0.3 0 20
    playsound entity.iron_golem.death player @a ~ ~ ~ 1 2
    playsound minecraft:entity.skeleton.converted_to_stray player @a ~ ~ ~ 1 0
    playsound ogg:block.smithing_table.smithing_table2 player @a ~ ~ ~ 1 1
    playsound disabled_sounds:item.armor.equip_iron player @a ~ ~ ~ 1 1
