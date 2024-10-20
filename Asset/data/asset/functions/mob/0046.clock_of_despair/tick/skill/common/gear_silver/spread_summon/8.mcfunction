#> asset:mob/0046.clock_of_despair/tick/skill/common/gear_silver/spread_summon/8
#
#
#
# @within function asset:mob/0046.clock_of_despair/tick/skill/*_oclock

summon item_display ~ ~ ~ {Tags:["1A.SkillMarker","1A.GearSilver","GearInit","Object","Uninterferable"],teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,2f,2f]},item:{id:"minecraft:stick",Count:1b,tag:{CustomModelData:20222}}}
summon item_display ~ ~ ~ {Tags:["1A.SkillMarker","1A.GearSilver","GearInit","Object","Uninterferable"],teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,2f,2f]},item:{id:"minecraft:stick",Count:1b,tag:{CustomModelData:20222}}}
summon item_display ~ ~ ~ {Tags:["1A.SkillMarker","1A.GearSilver","GearInit","Object","Uninterferable"],teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,2f,2f]},item:{id:"minecraft:stick",Count:1b,tag:{CustomModelData:20222}}}
summon item_display ~ ~ ~ {Tags:["1A.SkillMarker","1A.GearSilver","GearInit","Object","Uninterferable"],teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,2f,2f]},item:{id:"minecraft:stick",Count:1b,tag:{CustomModelData:20222}}}
summon item_display ~ ~ ~ {Tags:["1A.SkillMarker","1A.GearSilver","GearInit","Object","Uninterferable"],teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,2f,2f]},item:{id:"minecraft:stick",Count:1b,tag:{CustomModelData:20222}}}
summon item_display ~ ~ ~ {Tags:["1A.SkillMarker","1A.GearSilver","GearInit","Object","Uninterferable"],teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,2f,2f]},item:{id:"minecraft:stick",Count:1b,tag:{CustomModelData:20222}}}
summon item_display ~ ~ ~ {Tags:["1A.SkillMarker","1A.GearSilver","GearInit","Object","Uninterferable"],teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,2f,2f]},item:{id:"minecraft:stick",Count:1b,tag:{CustomModelData:20222}}}
summon item_display ~ ~ ~ {Tags:["1A.SkillMarker","1A.GearSilver","GearInit","Object","Uninterferable"],teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,2f,2f]},item:{id:"minecraft:stick",Count:1b,tag:{CustomModelData:20222}}}

execute as @e[type=item_display,tag=GearInit,distance=..0.1] run function asset:mob/0046.clock_of_despair/tick/skill/common/gear_silver/spread_summon/spread
tag @e[type=item_display,tag=GearInit,distance=..14] remove GearInit
