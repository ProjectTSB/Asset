#> asset:teleporter/43/register
#
# テレポーターの定義データ
#
# @within function asset:teleporter/register/register.m


execute unless loaded 250 138 126 run return 1

# ID (int)
    data modify storage asset:teleporter ID set value 43
# Pos ([int] @ 3)
    data modify storage asset:teleporter Pos set value [250, 138, 126]