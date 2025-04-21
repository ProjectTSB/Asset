#> asset:teleporter/303/register
#
# テレポーターの定義データ
#
# @within function asset:teleporter/register/register.m


execute unless loaded 55 143 1963 run return 1

# ID (int)
    data modify storage asset:teleporter ID set value 303
# Pos ([int] @ 3)
    data modify storage asset:teleporter Pos set value [55, 143, 1963]