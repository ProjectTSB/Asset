#> asset:object/1133.deep_azure_slash/tick/summon_slash
#
#
#
# @within function asset:object/1133.deep_azure_slash/tick/rotate

    playsound minecraft:item.trident.throw player @a ~ ~ ~ 0.4 0.8

    data modify storage api: Argument.ID set value 2001
    data modify storage api: Argument.FieldOverride set value {Color:3423945,Frames:[20545,20546,20547],Scale:[4f,4f,0.1f],Transformation:{left_rotation:[0.561f,-0.43f,0.43f,0.561f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f]}}
    $execute rotated $(Rotation0) $(Rotation1) positioned ^ ^ ^0 run function api:object/summon

    #$execute rotated $(Rotation0) $(Rotation1) positioned ^ ^ ^0 run function asset:object/1133.deep_azure_slash/tick/a
