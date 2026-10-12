#> asset:artifact/1623.palermo/trigger/vfx
#
#@within function asset:artifact/1623.palermo/trigger/3.main

#> Private
# @private
    #declare score_holder $Random
    #declare score_holder $Stack

#
# Field設定
    data modify storage api: Argument.FieldOverride set value {Item:{id:"minecraft:stick",Count:1b},Frames:[20666,20667,20668],Scale:[5f,5f,0.1f],Transformation:{left_rotation:[0.f,0f,0f,0f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f]}}

# left_rotationをはランダムに変える
    execute store result score $Random Temporary run random value 0..3
    # debug
        #scoreboard players set $Random Temporary 2
    # 右下から(53°
        execute if score $Random Temporary matches 0 run data modify storage api: Argument.FieldOverride.Transformation.left_rotation set value [0.6686f,-0.2302f,0.5862f,0.3954f]
    # 右上から
        execute if score $Random Temporary matches 1 run data modify storage api: Argument.FieldOverride.Transformation.left_rotation set value [0.3954f,-0.5862f,0.2302f,0.6686f]
    # 左上から
       execute if score $Random Temporary matches 2 run data modify storage api: Argument.FieldOverride.Transformation.left_rotation set value [-0.1988f,-0.6786f,-0.3676f,0.604f]
    # 左のちょっと下から
       execute if score $Random Temporary matches 3 run data modify storage api: Argument.FieldOverride.Transformation.left_rotation set value [-0.5061f,-0.4938f,-0.6167f,0.346f]

# 召喚
    data modify storage api: Argument.ID set value 2001
    execute rotated ~ ~-4 run function api:object/summon

# リセット
    scoreboard players reset $Random Temporary

# 斬撃音
    playsound item.trident.throw player @a ~ ~ ~ 0.55 0.5 0
    playsound entity.glow_squid.squirt player @a ~ ~ ~ 0.55 2 0

# バフが1以上あればさらに追加で鳴らす
    execute store result score $Stack Temporary run data get storage api: Return.Effect.Stack
    execute if score $Stack Temporary matches 1.. run playsound entity.zombie.break_wooden_door player @a ~ ~ ~ 0.25 0.9 0
    execute if score $Stack Temporary matches 1.. run playsound entity.blaze.hurt player @a ~ ~ ~ 0.6 1.35 0
#
# @within function asset:artifact/1623.palermo/trigger/3.main
