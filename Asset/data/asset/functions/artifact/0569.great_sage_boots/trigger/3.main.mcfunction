#> asset:artifact/0569.great_sage_boots/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0569.great_sage_boots/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/feet

# 演出
    particle end_rod ~ ~ ~ 0.3 0.1 0.3 0.1 10 normal @a
    playsound minecraft:block.enchantment_table.use player @a ~ ~ ~ 0.8 1
