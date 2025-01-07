#> asset:mob/0421.silver_turret/summon/
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:mob/alias/421/summon

# 元となるEntityを召喚する
    summon silverfish ~ ~ ~ {Tags:["MobInit","AntiBurn","AlwaysSlowFall"],Passengers:[{id:"minecraft:item_display",Tags:["AllowProcessingCommonTag","AutoKillWhenDieVehicle"],teleport_duration:1,brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.3f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:stick",Count:1b,tag:{CustomModelData:20467}}}]}
