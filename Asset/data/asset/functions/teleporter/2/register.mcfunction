#> asset:teleporter/2/register
#
# テレポーターの定義データ
#
# @within function asset:teleporter/register/register.m


execute unless loaded -16 21 -2 run return 1

# ID (int)
    data modify storage asset:teleporter ID set value 2
# Pos ([int] @ 3)
    data modify storage asset:teleporter Pos set value [-16, 21, -2]