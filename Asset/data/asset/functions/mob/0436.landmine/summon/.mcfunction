#> asset:mob/0436.landmine/summon/
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:mob/alias/436/summon

#> Display
# @private
    #declare tag C4.DisplayInit

# 元となるEntityを召喚する
    summon slime ~ ~ ~ {Tags:["MobInit","ProcessCommonTag","AlwaysInvisible","AlwaysSlowFall"],NoAI:0b,Silent:1b,DeathLootTable:"minecraft:empty"}

# 見た目召喚
    summon item_display ~ ~ ~ {Tags:["C4.DisplayInit","ProcessCommonTag","AutoKillWhenDieVehicle"],item_display:"thirdperson_righthand",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,-0.5f,0f],scale:[2f,2f,2f]},item:{id:"minecraft:stick",Count:1b,tag:{CustomModelData:20511}}}

# ride
    ride @e[type=item_display,tag=C4.DisplayInit,distance=..1,limit=1] mount @e[type=slime,tag=MobInit,distance=..1,limit=1]

# reset
    tag @e[type=item_display,tag=C4.DisplayInit,distance=..1] remove C4.DisplayInit
