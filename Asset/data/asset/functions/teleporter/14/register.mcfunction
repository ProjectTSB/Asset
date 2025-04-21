#> asset:teleporter/14/register
#
# テレポーターの定義データ
#
# @within function asset:teleporter/register/register.m


execute unless loaded 180 10 -38 run return 1

# ID (int)
    data modify storage asset:teleporter ID set value 14
# Pos ([int] @ 3)
    data modify storage asset:teleporter Pos set value [180, 10, -38]