#> asset:teleporter/8/register
#
# テレポーターの定義データ
#
# @within function asset:teleporter/register/register.m


execute unless loaded 122 39 43 run return 1

# ID (int)
    data modify storage asset:teleporter ID set value 8
# Pos ([int] @ 3)
    data modify storage asset:teleporter Pos set value [122, 39, 43]