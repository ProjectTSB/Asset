#> asset:teleporter/33/register
#
# テレポーターの定義データ
#
# @within function asset:teleporter/register/register.m


execute unless loaded 220 125 -41 run return 1

# ID (int)
    data modify storage asset:teleporter ID set value 33
# Pos ([int] @ 3)
    data modify storage asset:teleporter Pos set value [220, 125, -41]