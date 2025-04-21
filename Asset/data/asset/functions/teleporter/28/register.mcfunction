#> asset:teleporter/28/register
#
# テレポーターの定義データ
#
# @within function asset:teleporter/register/register.m


execute unless loaded 161 10 194 run return 1

# ID (int)
    data modify storage asset:teleporter ID set value 28
# Pos ([int] @ 3)
    data modify storage asset:teleporter Pos set value [161, 10, 194]