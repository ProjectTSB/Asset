#> asset:teleporter/10/register
#
# テレポーターの定義データ
#
# @within function asset:teleporter/register/register.m


execute unless loaded -82 7 9 run return 1

# ID (int)
    data modify storage asset:teleporter ID set value 10
# Pos ([int] @ 3)
    data modify storage asset:teleporter Pos set value [-82, 7, 9]