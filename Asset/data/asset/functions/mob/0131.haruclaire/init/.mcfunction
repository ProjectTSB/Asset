#> asset:mob/0131.haruclaire/init/
# @within asset:mob/alias/131/init

summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["3N.ArmorStand","3N.ArmorStandThis","Object","Uninterferable"],Pose:{LeftArm:[0f,0f,340f],RightArm:[0f,0f,20f]},HandItems:[{id:"minecraft:stone",Count:1b,tag:{CustomModelData:20056}},{id:"minecraft:stone",Count:1b,tag:{CustomModelData:20055}}],ArmorItems:[{},{},{},{id:"minecraft:stone",Count:1b,tag:{CustomModelData:20058}}]}
execute as @e[type=wither_skeleton,tag=MobInit,distance=..0.01] at @s run tp @e[type=armor_stand,tag=3N.ArmorStandThis,distance=..0.01] @s
scoreboard players set @e[type=wither_skeleton,tag=MobInit,distance=..0.01] 3N.Tick -20
tag @e[type=armor_stand,tag=3N.ArmorStandThis,distance=..0.01] remove 3N.ArmorStandThis
