#> asset:teleporter/50/register
#
# テレポーターの定義データ
#
# @within function asset:teleporter/register/register.m


execute unless loaded 174 175 -182 run return 1

# ID (int)
    data modify storage asset:teleporter ID set value 50
# Pos ([int] @ 3)
    data modify storage asset:teleporter Pos set value [174, 175, -182]