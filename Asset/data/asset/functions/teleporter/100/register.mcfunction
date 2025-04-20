#> asset:teleporter/100/register
#
# テレポーターの定義データ
#
# @within function asset:teleporter/register/register.m


execute unless loaded -3957 38 -897 run return 1

# ID (int)
    data modify storage asset:teleporter ID set value 100
# Pos ([int] @ 3)
    data modify storage asset:teleporter Pos set value [-3957, 38, -897]