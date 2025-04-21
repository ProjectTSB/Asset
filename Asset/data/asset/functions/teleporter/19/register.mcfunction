#> asset:teleporter/19/register
#
# テレポーターの定義データ
#
# @within function asset:teleporter/register/register.m


execute unless loaded 3 37 -219 run return 1

# ID (int)
    data modify storage asset:teleporter ID set value 19
# Pos ([int] @ 3)
    data modify storage asset:teleporter Pos set value [3, 37, -219]