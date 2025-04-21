#> asset:teleporter/23/register
#
# テレポーターの定義データ
#
# @within function asset:teleporter/register/register.m


execute unless loaded -75 89 -31 run return 1

# ID (int)
    data modify storage asset:teleporter ID set value 23
# Pos ([int] @ 3)
    data modify storage asset:teleporter Pos set value [-75, 89, -31]