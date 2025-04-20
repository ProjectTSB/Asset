#> asset:teleporter/200/register
#
# テレポーターの定義データ
#
# @within function asset:teleporter/register/register.m


execute unless loaded 3 84 15 run return 1

# ID (int)
    data modify storage asset:teleporter ID set value 200
# Pos ([int] @ 3)
    data modify storage asset:teleporter Pos set value [3, 84, 15]