#> asset:teleporter/22/register
#
# テレポーターの定義データ
#
# @within function asset:teleporter/register/register.m


execute unless loaded -78 -16 144 run return 1

# ID (int)
    data modify storage asset:teleporter ID set value 22
# Pos ([int] @ 3)
    data modify storage asset:teleporter Pos set value [-78, -16, 144]