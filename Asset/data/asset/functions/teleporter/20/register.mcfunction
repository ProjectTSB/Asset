#> asset:teleporter/20/register
#
# テレポーターの定義データ
#
# @within function asset:teleporter/register/register.m


execute unless loaded 132 55 -190 run return 1

# ID (int)
    data modify storage asset:teleporter ID set value 20
# Pos ([int] @ 3)
    data modify storage asset:teleporter Pos set value [132, 55, -190]