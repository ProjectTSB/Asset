#> asset:mob/0129.lexiel/init/
# @within asset:mob/alias/129/init

summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["3L.ArmorStand","3L.ArmorStandThis","Object","Uninterferable"],Pose:{LeftArm:[0f,0f,340f],RightArm:[0f,0f,20f]},HandItems:[{id:"minecraft:stone",Count:1b,tag:{CustomModelData:20035}},{id:"minecraft:stone",Count:1b,tag:{CustomModelData:20038}}],ArmorItems:[{},{},{},{id:"minecraft:stone",Count:1b,tag:{CustomModelData:20039}}]}
tp @e[type=armor_stand,tag=3L.ArmorStandThis,distance=..0.01] @s
tag @e[type=armor_stand,tag=3L.ArmorStandThis,distance=..0.01] remove 3L.ArmorStandThis
