#> asset:teleporter/6/register
#
# テレポーターの定義データ
#
# @within function asset:teleporter/register/register.m


execute unless loaded 86 7 134 run return 1

# ID (int)
    data modify storage asset:teleporter ID set value 6
# Pos ([int] @ 3)
    data modify storage asset:teleporter Pos set value [86, 7, 134]