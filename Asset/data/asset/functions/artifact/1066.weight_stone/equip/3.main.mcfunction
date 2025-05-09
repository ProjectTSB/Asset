#> asset:artifact/1066.weight_stone/equip/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1066.weight_stone/equip/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/hotbar

# 演出
    playsound block.stone.break player @a[distance=..5] ~ ~ ~ 1 0
    playsound block.stone.break player @a[distance=..5] ~ ~ ~ 1 0
    playsound block.stone.break player @a[distance=..5] ~ ~ ~ 1 0
    playsound block.gravel.break player @a[distance=..5] ~ ~ ~ 0.8 0 0
    particle block stone ~ ~0.2 ~ 0.4 0 0.4 0 30 normal
