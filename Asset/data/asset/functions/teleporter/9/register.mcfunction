#> asset:teleporter/9/register
#
# テレポーターの定義データ
#
# @within function asset:teleporter/register/register.m


execute unless loaded -68 11 49 run return 1

# ID (int)
    data modify storage asset:teleporter ID set value 9
# Pos ([int] @ 3)
    data modify storage asset:teleporter Pos set value [-68, 11, 49]