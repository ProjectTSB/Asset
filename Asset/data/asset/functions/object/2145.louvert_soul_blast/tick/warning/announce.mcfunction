#> asset:object/2145.louvert_soul_blast/tick/warning/announce
#
#
#
# @within function asset:object/2145.louvert_soul_blast/tick/

# 四角形予告召喚
    data modify storage api: Argument.ID set value 2113
    data modify storage api: Argument.FieldOverride set value {ToForward:false,Color:3067647,Scale:[2f,48f],Interpolation:40,Tick:40}
    data modify storage api: Argument.FieldOverride.RotationX set from entity @s Rotation[0]
    execute at @s run function api:object/summon
