#> asset:mob/0398.crystal_healer/init/
#
# Mob召喚時のInit処理
#
# @within function asset:mob/alias/398/init

# 見た目召喚
    summon item_display ~ ~ ~ {Tags:["B2.Display","B2.Temp","AllowProcessingCommonTag","AutoKillWhenDieVehicle"],interpolation_duration:1,teleport_duration:30,brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,-1.9f,0f],scale:[1f,1f,1f]},item:{id:"stick",Count:1b,tag:{CustomModelData:20367}},Passengers:[{id:"item_display",Tags:["AllowProcessingCommonTag","AutoKillWhenDieVehicle"],Rotation:[0f,0f],interpolation_duration:30,teleport_duration:30,brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,-0.4f,0f],scale:[0.75f,0.75f,0.75f]},item:{id:"stick",Count:1b,tag:{CustomModelData:20369}}}]}

# 乗せる
    ride @e[type=item_display,tag=B2.Display,tag=B2.Temp,distance=..0.01,limit=1] mount @s

# タグ外し
    execute on passengers run tag @s remove B2.Temp
