#> asset:artifact/1032.life_charm/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1032.life_charm/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/hotbar

# 演出
    playsound ogg:block.smithing_table.smithing_table2 player @a ~ ~ ~ 0.5 1.6
    playsound disabled_sounds:item.armor.equip_iron player @a ~ ~ ~ 0.5 1
    playsound ogg:random.levelup player @a ~ ~ ~ 0.6 2
    particle dust 1 0.29 0.278 1 ~ ~1 ~ 0.2 0.2 0.2 0 20
    particle crit ~ ~1 ~ 0 0 0 0.5 10
