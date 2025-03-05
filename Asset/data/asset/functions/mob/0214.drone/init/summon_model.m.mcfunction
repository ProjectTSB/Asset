#> asset:mob/0214.drone/init/summon_model.m
#
# 
#
# @within function asset:mob/0214.drone/init/

#> prv
# @private
    #declare tag 5Y.ModelInit

# 召喚
    $summon item_display ~ ~ ~ {Tags:["5Y.ModelInit","ProcessCommonTag","AutoKillWhenDieVehicle"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,-0.25f,0f],scale:[1.25f,1.25f,1.25f]},item:{id:"minecraft:stick",Count:1b,tag:{CustomModelData:20485}},teleport_duration:1,item_display:"thirdperson_righthand",Rotation:$(Rotation)}

# 乗せる
    ride @e[tag=5Y.ModelInit,distance=..1,limit=1] mount @s

# reset 
    tag @e[tag=5Y.ModelInit,distance=..1] remove 5Y.ModelInit
