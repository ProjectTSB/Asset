#> asset:teleporter/90/register
#
# テレポーターの定義データ
#
# @within function asset:teleporter/register/register.m


execute unless loaded 67 110 188 run return 1

# ID (int)
    data modify storage asset:teleporter ID set value 90
# Pos ([int] @ 3)
    data modify storage asset:teleporter Pos set value [67, 110, 188]