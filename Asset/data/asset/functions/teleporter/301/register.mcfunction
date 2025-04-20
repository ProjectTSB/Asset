#> asset:teleporter/301/register
#
# テレポーターの定義データ
#
# @within function asset:teleporter/register/register.m


execute unless loaded 108 158 396 run return 1

# ID (int)
    data modify storage asset:teleporter ID set value 301
# Pos ([int] @ 3)
    data modify storage asset:teleporter Pos set value [108, 158, 396]