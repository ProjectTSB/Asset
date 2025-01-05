#> asset:mob/0420.astro_blaze/summon/
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:mob/alias/420/summon

# 元となるEntityを召喚する
    summon blaze ~ ~ ~ {Tags:["MobInit","AlwaysSlowFall"],Passengers:[{id:"minecraft:block_display",Tags:["AllowProcessingCommonTag","AutoKillWhenDieVehicle"],teleport_duration:1,brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.375f,-0.6f,-0.375f],scale:[0.75f,0.6f,0.75f]},block_state:{Name:"minecraft:glass"}}]}
