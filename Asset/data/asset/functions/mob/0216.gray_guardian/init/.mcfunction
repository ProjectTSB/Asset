#> asset:mob/0216.gray_guardian/init/
# @within asset:mob/alias/216/init

summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["60.ArmorStand","60.ArmorStandThis","Object","Uninterferable"],Pose:{LeftArm:[0f,0f,340f],RightArm:[0f,0f,20f]},HandItems:[{id:"minecraft:stick",Count:1b,tag:{CustomModelData:20125}},{id:"minecraft:stick",Count:1b,tag:{CustomModelData:20128}}],ArmorItems:[{},{},{},{id:"minecraft:stick",Count:1b,tag:{CustomModelData:20130}}]}
tp @e[type=armor_stand,tag=60.ArmorStandThis,distance=..0.01] @s
tag @e[type=armor_stand,tag=60.ArmorStandThis,distance=..100] remove 60.ArmorStandThis
scoreboard players set @s 60.Tick -100
