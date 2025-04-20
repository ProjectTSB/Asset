#> asset:teleporter/15/register
#
# テレポーターの定義データ
#
# @within function asset:teleporter/register/register.m


execute unless loaded -26 8 38 run return 1

# ID (int)
    data modify storage asset:teleporter ID set value 15
# Pos ([int] @ 3)
    data modify storage asset:teleporter Pos set value [-26, 8, 38]