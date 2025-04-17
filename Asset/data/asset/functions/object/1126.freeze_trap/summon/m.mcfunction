#> asset:object/1126.freeze_trap/summon/m
#
# @input args:
#   Rotation : float @ 2
# @within function asset:object/1126.freeze_trap/summon/

# 元となるEntityを召喚する
    $summon area_effect_cloud ~ ~ ~ {Tags:["ObjectInit"],Duration:2147483647,Rotation:$(Rotation),Passengers:[{id:"area_effect_cloud",Duration:2147483647,Rotation:$(Rotation),Tags:["ProcessCommonTag","AutoKillWhenDieVehicle","Uninterferable"]}]}
