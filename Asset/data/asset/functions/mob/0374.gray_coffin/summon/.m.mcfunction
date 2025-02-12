#> asset:mob/0374.gray_coffin/summon/.m
#
#
#
# @within function asset:mob/0374.gray_coffin/summon/

# 元となるEntityを召喚する
    $summon polar_bear ~ ~ ~ {Rotation:[$(RotationX)f,0.0f],NoAI:1b,Silent:1b,Tags:["MobInit","ProcessCommonTag","AlwaysInvisible"],DeathLootTable:"empty",Passengers:[{id:"item_display",Rotation:[$(RotationX)f,0.0f],Tags:["ProcessCommonTag","AutoKillWhenDieVehicle"],item:{id:"stick",Count:1b,tag:{CustomModelData:20448}},transformation:{left_rotation:[-0.7071f,0f,0f,0.7071f],right_rotation:[0f,0f,0f,1f],translation:[0f,-0.7f,0.7f],scale:[1.35f,1.35f,1.35f]}}]}
