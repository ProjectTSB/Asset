#> asset:mob/0236.ksitigarbha/summon/
# @within asset:mob/alias/236/summon

# ベースゾンビの上にitem_display,block_display,interactionを並列に乗せている
summon zombie ~ ~ ~ {Tags:["MobInit","ProcessCommonTag","AlwaysInvisible","AntiBurn","AlwaysSlowFall"],Silent:1b,IsBaby:0b,DeathLootTable:"empty",Passengers:[{id:"item_display",Tags:["6K.Display","ProcessCommonTag","AutoKillWhenDieVehicle"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,-1.1f,0f],scale:[1.8f,1.8f,1.8f]},item:{id:"stick",Count:1b,tag:{CustomModelData:20180}}},{id:"block_display",Tags:["6K.Snow","ProcessCommonTag","AutoKillWhenDieVehicle"],interpolation_duration:1,teleport_duration:30,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.45f,-0.2f,-0.45f],scale:[0.9f,0.9f,0.9f]},block_state:{Name:"minecraft:snow",Properties:{layers:"1"}}},{id:"interaction",height:-0.3f,width:0.9f,Tags:["6K.Hitbox","ProcessCommonTag","AutoKillWhenDieVehicle"]}]}
