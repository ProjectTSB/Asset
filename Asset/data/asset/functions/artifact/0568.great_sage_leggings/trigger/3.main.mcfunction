#> asset:artifact/0568.great_sage_leggings/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0568.great_sage_leggings/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:artifact/common/use/legs

# 演出
    particle end_rod ~ ~0.4 ~ 0.3 0.1 0.3 0.1 10 normal @a
    playsound minecraft:block.enchantment_table.use player @a ~ ~ ~ 0.8 1
