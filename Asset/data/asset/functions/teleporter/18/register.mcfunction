#> asset:teleporter/18/register
#
# テレポーターの定義データ
#
# @within function asset:teleporter/register/register.m


execute unless loaded -91 83 226 run return 1

# ID (int)
    data modify storage asset:teleporter ID set value 18
# Pos ([int] @ 3)
    data modify storage asset:teleporter Pos set value [-91, 83, 226]