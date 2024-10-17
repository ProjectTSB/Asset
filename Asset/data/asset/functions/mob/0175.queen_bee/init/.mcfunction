#> asset:mob/0175.queen_bee/init/
# @within asset:mob/alias/175/init

summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["4V.ArmorStand","4V.ArmorStandThis","Object","Uninterferable"],ArmorItems:[{},{},{},{id:"minecraft:stone",Count:1b,tag:{CustomModelData:20052}}]}
execute as @e[type=ravager,tag=MobInit,distance=..0.01] at @s run tp @e[type=armor_stand,tag=4V.ArmorStandThis,distance=..0.01] @s
tag @e[type=armor_stand,tag=4V.ArmorStandThis,distance=..0.01] remove 4V.ArmorStandThis
scoreboard players set @e[type=ravager,tag=MobInit,distance=..0.01] 4V.Tick -15
