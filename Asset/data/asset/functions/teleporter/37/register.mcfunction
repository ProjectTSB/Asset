#> asset:teleporter/37/register
#
# テレポーターの定義データ
#
# @within function asset:teleporter/register/register.m


execute unless loaded -225 170 4 run return 1

# ID (int)
    data modify storage asset:teleporter ID set value 37
# Pos ([int] @ 3)
    data modify storage asset:teleporter Pos set value [-225, 170, 4]