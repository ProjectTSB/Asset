#> asset:teleporter/61/register
#
# テレポーターの定義データ
#
# @within function asset:teleporter/register/register.m


execute unless loaded 107 232 592 run return 1

# ID (int)
    data modify storage asset:teleporter ID set value 61
# Pos ([int] @ 3)
    data modify storage asset:teleporter Pos set value [107, 232, 592]