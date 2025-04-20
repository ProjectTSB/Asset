#> asset:teleporter/55/register
#
# テレポーターの定義データ
#
# @within function asset:teleporter/register/register.m


execute unless loaded -176 158 184 run return 1

# ID (int)
    data modify storage asset:teleporter ID set value 55
# Pos ([int] @ 3)
    data modify storage asset:teleporter Pos set value [-176, 158, 184]