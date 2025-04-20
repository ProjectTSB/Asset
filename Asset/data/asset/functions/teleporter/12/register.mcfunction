#> asset:teleporter/12/register
#
# テレポーターの定義データ
#
# @within function asset:teleporter/register/register.m


execute unless loaded -42 34 -143 run return 1

# ID (int)
    data modify storage asset:teleporter ID set value 12
# Pos ([int] @ 3)
    data modify storage asset:teleporter Pos set value [-42, 34, -143]