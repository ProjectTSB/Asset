#> asset:teleporter/5/register
#
# テレポーターの定義データ
#
# @within function asset:teleporter/register/register.m


execute unless loaded 23 10 53 run return 1

# ID (int)
    data modify storage asset:teleporter ID set value 5
# Pos ([int] @ 3)
    data modify storage asset:teleporter Pos set value [23, 10, 53]