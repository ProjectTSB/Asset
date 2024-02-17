#> asset:artifact/0991.soul_mate/trigger/equip/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0991.soul_mate/trigger/equip/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/hotbar

# ここから先は神器側の効果の処理を書く
# 演出
    playsound ogg:block.smithing_table.smithing_table2 player @a ~ ~ ~ 1 1.2
    playsound minecraft:entity.allay.ambient_without_item player @a ~ ~ ~ 1 1.6
    playsound minecraft:item.armor.equip_iron player @a ~ ~ ~ 1 1
    particle minecraft:dust 0.761 0.961 1 1 ~ ~1 ~ 0.2 0.2 0.2 0 10
    particle minecraft:dust 0.459 0.839 1 1 ~ ~1 ~ 0.2 0.2 0.2 0 10

# タグ付与
    tag @s add RJ.SoulMate