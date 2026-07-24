#> asset:artifact/1543.higan/trigger/slash/summon
#
#
#
# @within function asset:artifact/1543.higan/trigger/slash/

#> Private
# @private
    #declare score_holder $Random

#
# Field設定
    data modify storage api: Argument.FieldOverride set value {Item:{id:"minecraft:stick",Count:1b},Frames:[20637,20638,20639],Scale:[5f,5f,0.1f],Transformation:{left_rotation:[0.f,0f,0f,0f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f]}}

# left_rotationをはランダムに変える
    execute store result score $Random Temporary run random value 0..5
    # debug
        #scoreboard players set $Random Temporary 2
    # 右から0°
        execute if score $Random Temporary matches 0 run data modify storage api: Argument.FieldOverride.Transformation.left_rotation set value [0.561f,-0.4305f,0.4305f,0.561f]
    # 右下から(53°
        execute if score $Random Temporary matches 1 run data modify storage api: Argument.FieldOverride.Transformation.left_rotation set value [0.6686f,-0.2302f,0.5862f,0.3954f]
    # 右上から
        execute if score $Random Temporary matches 2 run data modify storage api: Argument.FieldOverride.Transformation.left_rotation set value [0.3954f,-0.5862f,0.2302f,0.6686f]
    # 右のほぼ垂直
        execute if score $Random Temporary matches 3 run data modify storage api: Argument.FieldOverride.Transformation.left_rotation set value [0.2534f,-0.6601f,0.0739f,0.7032f]
    # 左上から
       execute if score $Random Temporary matches 4 run data modify storage api: Argument.FieldOverride.Transformation.left_rotation set value [-0.1988f,-0.6786f,-0.3676f,0.604f]
    # 左のちょっと下から
       execute if score $Random Temporary matches 5 run data modify storage api: Argument.FieldOverride.Transformation.left_rotation set value [-0.5061f,-0.4938f,-0.6167f,0.346f]


# 左下から

# 召喚
    data modify storage api: Argument.ID set value 2001
    execute rotated ~ ~-4 run function api:object/summon

# リセット
    scoreboard players reset $Random Temporary
