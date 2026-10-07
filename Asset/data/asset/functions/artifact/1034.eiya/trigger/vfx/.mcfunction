#> asset:artifact/1034.eiya/trigger/vfx/
#
#
#
# @within function asset:artifact/1034.eiya/trigger/3.main

# FieldOverride
    data modify storage api: Argument.FieldOverride set value {Color:50175,Frames:[20659,20660,20661],Scale:[6f,6f,0.01f],Transformation:{left_rotation:[0f,0f,0f,01f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f]},Item:{id:"minecraft:stick",Count:1b}}

# debug
    # scoreboard players set @s SQ.Count 8

# playsound
    execute if score @s SQ.Count matches ..8 anchored eyes positioned ^ ^ ^1.1 positioned ~ ~-0.5 ~ run function asset:artifact/1034.eiya/trigger/vfx/1-8

# left_rotation
    execute if score @s SQ.Count matches 1 run data modify storage api: Argument.FieldOverride.Transformation.left_rotation set value [-0.3197f,-0.6307f,-0.4726f,0.526f]
    execute if score @s SQ.Count matches 2 run data modify storage api: Argument.FieldOverride.Transformation.left_rotation set value [0.4406f,-0.553f,0.2818f,0.6485f]
    execute if score @s SQ.Count matches 3 run data modify storage api: Argument.FieldOverride.Transformation.left_rotation set value [0.6513f,-0.2754f,0.5574f,0.4352f]
    execute if score @s SQ.Count matches 4 run data modify storage api: Argument.FieldOverride.Transformation.left_rotation set value [-0.5825f,-0.4008f,-0.6667f,0.2357f]
    execute if score @s SQ.Count matches 5 run data modify storage api: Argument.FieldOverride.Transformation.left_rotation set value [-0.4812f,-0.5181f,-0.5993f,0.3753f]
    execute if score @s SQ.Count matches 6 run data modify storage api: Argument.FieldOverride.Transformation.left_rotation set value [0.6616f,-0.2496f,0.574f,0.413f]
    execute if score @s SQ.Count matches 7 run data modify storage api: Argument.FieldOverride.Transformation.left_rotation set value [-0.4812f,-0.5181f,-0.5993f,0.3753f]
    execute if score @s SQ.Count matches 8 run data modify storage api: Argument.FieldOverride.Transformation.left_rotation set value [0.3508f,-0.6139f,0.1792f,0.684f]

# 9発目のみ色々追加でやる
    execute if score @s SQ.Count matches 9 run data modify storage api: Argument.FieldOverride.Transformation.left_rotation set value [0.5581f,-0.3377f,0.6518f,0.3868f]
    execute if score @s SQ.Count matches 9 run data modify storage api: Argument.FieldOverride.Scale set value [10f,10f,0.01f]
    execute if score @s SQ.Count matches 9 anchored eyes positioned ^ ^ ^1.5 run function asset:artifact/1034.eiya/trigger/vfx/9

# 召喚
    data modify storage api: Argument.ID set value 2001
    execute anchored eyes positioned ^ ^ ^1.1 positioned ~ ~-0.5 ~ rotated ~ ~-3 run function api:object/summon
