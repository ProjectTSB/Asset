#> asset:teleporter/13/register
#
# テレポーターの定義データ
#
# @within function asset:teleporter/register/register.m


execute unless loaded 64 16 -156 run return 1

# ID (int)
    data modify storage asset:teleporter ID set value 13
# Pos ([int] @ 3)
    data modify storage asset:teleporter Pos set value [64, 16, -156]