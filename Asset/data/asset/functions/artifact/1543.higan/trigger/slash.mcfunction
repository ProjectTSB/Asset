#> asset:artifact/1543.higan/trigger/slash
#
#
#
# @within function asset:artifact/1543.higan/trigger/vfx

#> Private
# @private
    #declare score_holder $Random

# Field設定
    data modify storage api: Argument.FieldOverride set value {Item:{id:"minecraft:stick",Count:1b},Frames:[20637,20638,20639],Scale:[5f,5f,0.1f],Transformation:{left_rotation:[0.f,0f,0f,0f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f]}}

# left_rotationをはランダムに変える
    execute store result score $Random Temporary run random value 0..2

  scoreboard players set $Random Temporary 5

# 右から
    # 水平
        execute if score $Random Temporary matches 0 run data modify storage api: Argument.FieldOverride.Transformation.left_rotation set value [0.561f,-0.4305f,0.4305f,0.561f]

# 左から

    # 水平
        execute if score $Random Temporary matches 1 run data modify storage api: Argument.FieldOverride.Transformation.left_rotation set value [0.4305f,0.561f,0.561f,-0.4305f]

# 右下から
    execute if score $Random Temporary matches 2 run data modify storage api: Argument.FieldOverride.Transformation.left_rotation set value [0.6686f,-0.2302f,0.5862f,0.3954f]

# 左下から
   # execute if score $Random Temporary matches 3 run data modify storage api: Argument.FieldOverride.Transformation.left_rotation set value [0.5862f,0.3954f,0.6686f,-0.2302f]
    #execute if score $Random Temporary matches 3 run data modify storage api: Argument.FieldOverride.Transformation.left_rotation set value [-0.4237f,-0.5346f,-0.1308f,0.7195f]
    #execute if score $Random Temporary matches 4 run data modify storage api: Argument.FieldOverride.Transformation.left_rotation set value [0.561f,-0.4304f,0.4304f,0.561f]
    #execute if score $Random Temporary matches 4 run data modify storage api: Argument.FieldOverride.Transformation.left_rotation set value [0.3954f,-0.5862f,0.2302f,0.6686f]

# 召喚
    data modify storage api: Argument.ID set value 2001
    execute rotated ~ ~-4 run function api:object/summon

# リセット
    scoreboard players reset $Random Temporary
