#> asset:teleporter/106/register
#
# テレポーターの定義データ
#
# @within function asset:teleporter/register/register.m


execute unless loaded -3975 100 200 run return 1

# ID (int)
    data modify storage asset:teleporter ID set value 106
# Pos ([int] @ 3)
    data modify storage asset:teleporter Pos set value [-3975, 100, 200]