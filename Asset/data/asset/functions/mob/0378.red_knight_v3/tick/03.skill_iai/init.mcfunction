#> asset:mob/0378.red_knight_v3/tick/03.skill_iai/init
#
#
#
# @within function asset:mob/0378.red_knight_v3/tick/03.skill_iai/main

# 演出
    playsound disabled_sounds:item.armor.equip_gold hostile @a ~ ~ ~ 1.5 0.7
    playsound disabled_sounds:item.armor.equip_iron hostile @a ~ ~ ~ 2 1
    playsound minecraft:item.trident.return hostile @a ~ ~ ~ 2 2
    playsound ogg:block.smithing_table.smithing_table2 hostile @a ~ ~ ~ 2 0.8
# しばらく無敵になる
    effect give @s resistance 2 10
