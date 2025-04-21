#> asset:teleporter/44/register
#
# テレポーターの定義データ
#
# @within function asset:teleporter/register/register.m


execute unless loaded 298 53 -82 run return 1

# ID (int)
    data modify storage asset:teleporter ID set value 44
# Pos ([int] @ 3)
    data modify storage asset:teleporter Pos set value [298, 53, -82]