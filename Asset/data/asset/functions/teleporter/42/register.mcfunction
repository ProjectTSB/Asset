#> asset:teleporter/42/register
#
# テレポーターの定義データ
#
# @within function asset:teleporter/register/register.m


execute unless loaded 256 53 254 run return 1

# ID (int)
    data modify storage asset:teleporter ID set value 42
# Pos ([int] @ 3)
    data modify storage asset:teleporter Pos set value [256, 53, 254]