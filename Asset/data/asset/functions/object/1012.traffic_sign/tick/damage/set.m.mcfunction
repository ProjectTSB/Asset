#> asset:object/1012.traffic_sign/tick/damage/set.m
#
# @input args:
#    Damage : int
# @within function asset:object/1012.traffic_sign/tick/damage/

$execute store result storage api: Argument.Damage double 0.0$(Damage) run scoreboard players operation $Speed Temporary > $1 Const

