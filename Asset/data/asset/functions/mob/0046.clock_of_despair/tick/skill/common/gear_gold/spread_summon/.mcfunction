#> asset:mob/0046.clock_of_despair/tick/skill/common/gear_gold/spread_summon/
#
#
#
# @within function asset:mob/0046.clock_of_despair/tick/skill/*_oclock

summon item_display ~ ~ ~ {start_interpolation:0,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,-0.05f,0f],scale:[1.5f,0.05f,1.5f]},Tags:["1A.SkillMarker","1A.GearGold","GearInit","Object","Uninterferable"]}
summon item_display ~ ~ ~ {start_interpolation:0,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,-0.05f,0f],scale:[1.5f,0.05f,1.5f]},Tags:["1A.SkillMarker","1A.GearGold","GearInit","Object","Uninterferable"]}
summon item_display ~ ~ ~ {start_interpolation:0,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,-0.05f,0f],scale:[1.5f,0.05f,1.5f]},Tags:["1A.SkillMarker","1A.GearGold","GearInit","Object","Uninterferable"]}
summon item_display ~ ~ ~ {start_interpolation:0,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,-0.05f,0f],scale:[1.5f,0.05f,1.5f]},Tags:["1A.SkillMarker","1A.GearGold","GearInit","Object","Uninterferable"]}

execute as @e[type=item_display,tag=GearInit,distance=..0.1] run function asset:mob/0046.clock_of_despair/tick/skill/common/gear_gold/spread_summon/spread
tag @e[type=item_display,tag=GearInit,distance=..14] remove GearInit
