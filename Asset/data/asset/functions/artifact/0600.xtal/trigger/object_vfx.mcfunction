#> asset:artifact/0600.xtal/trigger/object_vfx
#
#
#
# @within function asset:artifact/0600.xtal/trigger/slash

#> Private
# @private
    #declare score_holder $Random

# 事前設定
    data modify storage api: Argument.ID set value 2001
    data modify storage api: Argument.FieldOverride set value {Color:8026746,Frames:[20335,20336,20337],Scale:[4f,4f,0.1f],Transformation:{left_rotation:[0f,0f,0.f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f]}}

# left_rotationをランダムに決定
    execute store result score $Random Temporary run random value 0..2
    # scoreboard players set $Random Temporary 2
    execute if score $Random Temporary matches 0 run data modify storage api: Argument.FieldOverride.Transformation.left_rotation set value [0.581f,0.403f,0.403f,-0.581f]
    execute if score $Random Temporary matches 1 run data modify storage api: Argument.FieldOverride.Transformation.left_rotation set value [-0.2706f,-0.6533f,-0.2706f,0.6533f]
    execute if score $Random Temporary matches 2 run data modify storage api: Argument.FieldOverride.Transformation.left_rotation set value [0.2706f,-0.6533f,0.2706f,0.6533f]
    scoreboard players reset $Random Temporary

# 召喚
    execute anchored eyes positioned ^ ^-0.5 ^1 run function api:object/summon
