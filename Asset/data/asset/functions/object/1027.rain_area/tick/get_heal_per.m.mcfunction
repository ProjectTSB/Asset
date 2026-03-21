#> asset:object/1027.rain_area/tick/get_heal_per.m
#
# マクロで回復量を直接取得する
#
# @input args:
#   HealPer : float
# @within function asset:object/1027.rain_area/tick/damage_and_heal

$execute as @p[tag=Owner] run return run attribute @s generic.max_health get $(HealPer)
