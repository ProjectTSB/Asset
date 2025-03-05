#> asset:object/1027.rain_area/tick/get_heal_per.m
#
# マクロで回復量を直接取得する
#
# @input args:
#   HealPer : float
# @within function asset:object/1027.rain_area/tick/damage_and_heal

$return run data get storage api: Return.MaxHealth $(HealPer)
