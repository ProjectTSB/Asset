#> asset:mob/0262.frestchika/init/
# @within asset:mob/alias/262/init

summon armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Tags:["7A.ArmorStand","7A.ArmorStandThis","Object","Uninterferable"],Pose:{LeftArm:[15f,0f,-15f],RightArm:[15f,0f,15f]},HandItems:[{id:"minecraft:stick",Count:1b,tag:{CustomModelData:20144}},{id:"minecraft:stick",Count:1b,tag:{CustomModelData:20143}}],ArmorItems:[{},{},{},{id:"minecraft:stick",Count:1b,tag:{CustomModelData:20147}}]}
tp @e[type=armor_stand,tag=7A.ArmorStandThis,distance=..0.01] @s
tag @e[type=armor_stand,tag=7A.ArmorStandThis,distance=..0.01] remove 7A.ArmorStandThis
scoreboard players set @s 7A.Tick -30
