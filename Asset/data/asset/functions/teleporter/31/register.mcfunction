#> asset:teleporter/31/register
#
# テレポーターの定義データ
#
# @within function asset:teleporter/register/register.m


execute unless loaded -149 49 -143 run return 1

# ID (int)
    data modify storage asset:teleporter ID set value 31
# Pos ([int] @ 3)
    data modify storage asset:teleporter Pos set value [-149, 49, -143]