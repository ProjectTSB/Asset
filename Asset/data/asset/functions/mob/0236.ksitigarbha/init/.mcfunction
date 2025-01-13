#> asset:mob/0236.ksitigarbha/init/
# @within asset:mob/alias/236/init

#> private
# @private
    #declare tag 6K.Temp

# 見た目召喚
    summon item_display ~ ~ ~ {Tags:["6K.Display","6K.Temp","AllowProcessingCommonTag","AutoKillWhenDieVehicle"],interpolation_duration:1,teleport_duration:30,brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,-1.1f,0f],scale:[1.8f,1.8f,1.8f]},item:{id:"stick",Count:1b,tag:{CustomModelData:20180}}}
    summon block_display ~ ~ ~ {Tags:["6K.Snow","6K.Temp","AllowProcessingCommonTag","AutoKillWhenDieVehicle"],interpolation_duration:1,teleport_duration:30,brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.45f,-0.2f,-0.45f],scale:[0.9f,0.9f,0.9f]},block_state:{Name:"minecraft:snow",Properties:{layers:"1"}}}
    ride @e[tag=6K.Display,tag=6K.Temp,limit=1] mount @s
    ride @e[tag=6K.Snow,tag=6K.Temp,limit=1] mount @s

# 判定召喚
    summon interaction ~ ~ ~ {height:-0.3f,width:0.9f,Tags:["6K.Hitbox","6K.Temp","AllowProcessingCommonTag","AutoKillWhenDieVehicle"]}
    ride @e[tag=6K.Hitbox,tag=6K.Temp,limit=1] mount @s

# reset
    tag @e[tag=6K.Temp,distance=..10] remove 6K.Temp
