#> asset:artifact/0022.amen_ra_rod/trigger/summon_1
#
# 神器のメイン処理部
#
# @within function asset:artifact/0022.amen_ra_rod/trigger/3.main

data modify storage api: Argument.ID set value 1103
data modify storage api: Argument.FieldOverride.Track set value true
execute store result storage api: Argument.FieldOverride.TargetID int 1 run scoreboard players get @s MobUUID
data modify storage api: Argument.FieldOverride.Duration set value 100
execute at @s anchored eyes positioned ^ ^ ^ run function api:object/summon
