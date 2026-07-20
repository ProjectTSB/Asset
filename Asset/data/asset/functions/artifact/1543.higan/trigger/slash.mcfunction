#> asset:artifact/1543.higan/trigger/slash
#
#
#
# @within function asset:artifact/1543.higan/trigger/vfx

    data modify storage api: Argument.ID set value 2001
    data modify storage api: Argument.FieldOverride set value {Item:{id:"minecraft:stick",Count:1b},Frames:[20637,20638,20639],Scale:[5f,5f,0.1f],Transformation:{left_rotation:[0.561f,-0.43f,0.43f,0.561f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f]}}
    execute rotated ~ ~-2 run function api:object/summon
