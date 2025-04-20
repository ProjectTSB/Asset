#> asset:teleporter/300/register
#
# テレポーターの定義データ
#
# @within function asset:teleporter/register/register.m


execute unless loaded 100 49 -17 run return 1

# ID (int)
    data modify storage asset:teleporter ID set value 300
# Pos ([int] @ 3)
    data modify storage asset:teleporter Pos set value [100, 49, -17]