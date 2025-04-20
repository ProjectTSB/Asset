#> asset:teleporter/17/register
#
# テレポーターの定義データ
#
# @within function asset:teleporter/register/register.m


execute unless loaded 38 -10 101 run return 1

# ID (int)
    data modify storage asset:teleporter ID set value 17
# Pos ([int] @ 3)
    data modify storage asset:teleporter Pos set value [38, -10, 101]