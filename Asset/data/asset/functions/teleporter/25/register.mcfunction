#> asset:teleporter/25/register
#
# テレポーターの定義データ
#
# @within function asset:teleporter/register/register.m


execute unless loaded -13 38 167 run return 1

# ID (int)
    data modify storage asset:teleporter ID set value 25
# Pos ([int] @ 3)
    data modify storage asset:teleporter Pos set value [-13, 38, 167]