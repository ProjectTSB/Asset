#> asset:mob/0120.convict/init/
# @within asset:mob/alias/120/init

summon armor_stand ~ ~ ~ {Marker:1b,NoBasePlate:1b,Invisible:1b,Tags:["3C.ArmorStand","3C.ArmorStandThis","Object","Uninterferable"],Pose:{LeftArm:[0f,330f,0f],RightArm:[0f,34f,0f],LeftLeg:[0f,6f,4f],RightLeg:[22f,0f,360f],Head:[24f,0f,0f]},HandItems:[{id:"minecraft:stick",Count:1b,tag:{CustomModelData:20182}},{id:"minecraft:stick",Count:1b,tag:{CustomModelData:20183}}],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:2039326}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:2039583}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:2039583}}},{id:"minecraft:stick",Count:1b,tag:{CustomModelData:20184}}]}
tp @e[type=armor_stand,tag=3C.ArmorStandThis,distance=..0.01] @s
tag @e[type=armor_stand,tag=3C.ArmorStandThis,distance=..0.01] remove 3C.ArmorStandThis
scoreboard players set @s 3C.Tick -30
