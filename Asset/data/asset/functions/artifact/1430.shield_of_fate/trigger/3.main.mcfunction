#> asset:artifact/1430.shield_of_fate/trigger/3.main
#
# 装備時の具体的な処理
#
# @within function asset:artifact/1430.shield_of_fate/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/hotbar
# 装備タグの付与
    tag @s add 13Q.Equipped
# sound
    playsound minecraft:block.copper_trapdoor.open master @a ~ ~ ~ 1.0 0.5 0.0
    
    playsound disabled_sounds:item.armor.equip_iron player @a ~ ~ ~ 1 1
