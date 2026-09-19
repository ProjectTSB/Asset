#> asset:artifact/0672.aurora_blade/trigger/fx/
#
#
#
# @within function asset:artifact/0672.aurora_blade/trigger/3.main

# object召喚
    data modify storage api: Argument.ID set value 2001
    data modify storage api: Argument.FieldOverride set value {Frames:[20651,20652,20653,20654],Scale:[4f,4f,0.1f],Transformation:{left_rotation:[0.561f,-0.43f,0.43f,0.561f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f]},Item:{id:"minecraft:stick",Count:1b}}
    execute anchored eyes positioned ^ ^ ^1.2 positioned ~ ~-0.5 ~ rotated ~ ~-4 run function api:object/summon

# その他
    execute anchored eyes positioned ^ ^ ^1.5 positioned ~ ~-0.6 ~ rotated ~ ~-4 run function asset:artifact/0672.aurora_blade/trigger/fx/other
