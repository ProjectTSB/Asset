#> asset:artifact/0991.soul_mate/trigger/equip/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0991.soul_mate/trigger/equip/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/hotbar

# ここから先は神器側の効果の処理を書く
# 演出
    playsound ogg:block.smithing_table.smithing_table2 player @a ~ ~ ~ 1 1.6
    playsound minecraft:item.armor.equip_iron player @a ~ ~ ~ 1 1
    particle crit ~ ~1 ~ 0 0 0 0.5 10

# タグ付与
    tag @s add RJ.SoulMate