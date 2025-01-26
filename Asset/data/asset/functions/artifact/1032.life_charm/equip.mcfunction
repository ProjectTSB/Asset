#> asset:artifact/1032.life_charm/equip
#
# 装備時に実行される処理
#
# @within function asset:artifact/alias/1032/equip

# 演出
    playsound ogg:block.smithing_table.smithing_table2 player @a ~ ~ ~ 0.5 1.6
    playsound minecraft:item.armor.equip_iron player @a ~ ~ ~ 0.5 1
    playsound ogg:random.levelup player @a ~ ~ ~ 0.6 2
    particle dust 1 0.29 0.278 1 ~ ~1 ~ 0.2 0.2 0.2 0 20
    particle crit ~ ~1 ~ 0 0 0 0.5 10
