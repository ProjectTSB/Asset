#> asset:artifact/1391.blue_refraction_prism/trigger/2.check_condition/reset
#
#
#
# @within function asset:artifact/1391.blue_refraction_prism/trigger/2.check_condition

# リセット
    data remove storage asset:temp Temp
    tag @e[type=#lib:living_without_player,tag=Target,distance=..64] remove Target
