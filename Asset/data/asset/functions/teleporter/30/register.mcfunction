#> asset:teleporter/30/register
#
# テレポーターの定義データ
#
# @within function asset:teleporter/register/register.m


execute unless loaded -19 2 107 run return 1

# ID (int)
    data modify storage asset:teleporter ID set value 30
# Pos ([int] @ 3)
    data modify storage asset:teleporter Pos set value [-19, 2, 107]