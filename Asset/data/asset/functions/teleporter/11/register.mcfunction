#> asset:teleporter/11/register
#
# テレポーターの定義データ
#
# @within function asset:teleporter/register/register.m


execute unless loaded -75 18 -66 run return 1

# ID (int)
    data modify storage asset:teleporter ID set value 11
# Pos ([int] @ 3)
    data modify storage asset:teleporter Pos set value [-75, 18, -66]