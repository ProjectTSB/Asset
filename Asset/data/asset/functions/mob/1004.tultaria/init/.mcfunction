#> asset:mob/1004.tultaria/init/
# @within asset:mob/alias/1004/init

summon armor_stand ~ ~ ~ {Marker:1b,NoGravity:1b,Invisible:1b,Tags:["RW.ArmorStand","RW.ArmorStandThis","Object","Uninterferable"],Pose:{LeftArm:[15f,0f,-15f],RightArm:[15f,0f,15f]},HandItems:[{id:"minecraft:stick",Count:1b,tag:{CustomModelData:20068}},{id:"minecraft:stick",Count:1b,tag:{CustomModelData:20068}}],ArmorItems:[{},{},{},{id:"minecraft:stick",Count:1b,tag:{CustomModelData:20072}}]}
tp @e[type=armor_stand,tag=RW.ArmorStandThis,distance=..0.01] @s
tag @e[type=armor_stand,tag=RW.ArmorStandThis,distance=..0.01] remove RW.ArmorStandThis
summon marker ~ ~ ~ {Tags:["RW.XYZ"]}
scoreboard players set @s RW.Tick -100
