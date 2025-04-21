#> asset:teleporter/29/register
#
# テレポーターの定義データ
#
# @within function asset:teleporter/register/register.m


execute unless loaded -139 51 70 run return 1

# ID (int)
    data modify storage asset:teleporter ID set value 29
# Pos ([int] @ 3)
    data modify storage asset:teleporter Pos set value [-139, 51, 70]