#> asset:mob/0373.gold_coffin/summon/
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:mob/alias/373/summon

# 元となるEntityを召喚する
    summon polar_bear ~ ~ ~ {NoAI:1b,Silent:1b,Tags:["MobInit","AlwaysInvisible"],DeathLootTable:"empty",Passengers:[{id:"item_display",Tags:["AssetMob","AutoKillWhenDieVehicle"],item:{id:"stick",Count:1b,tag:{CustomModelData:20446}},transformation:{left_rotation:[-0.7071f,0f,0f,0.7071f],right_rotation:[0f,0f,0f,1f],translation:[0f,-0.7f,0.7f],scale:[1.35f,1.35f,1.35f]}}]}
