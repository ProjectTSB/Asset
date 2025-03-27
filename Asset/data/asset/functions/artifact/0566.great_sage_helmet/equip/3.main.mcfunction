#> asset:artifact/0566.great_sage_helmet/equip/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0566.great_sage_helmet/equip/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    data modify storage asset:artifact IgnoreItemUpdate set value false
    function asset:artifact/common/use/head

# ここから先は神器側の効果の処理を書く

# 演出
    particle end_rod ~ ~1.7 ~ 0.3 0.1 0.3 0.1 10 normal @a
    playsound minecraft:block.enchantment_table.use player @a ~ ~ ~ 0.8 1
