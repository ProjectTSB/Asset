#> asset:mob/0022.red_knight/init/
# @within asset:mob/alias/22/init

summon armor_stand ~ ~ ~ {ShowArms:1b,Marker:1b,Invisible:1b,Tags:["M.ArmorStand","M.ArmorStandThis","Object","Uninterferable"],Pose:{LeftArm:[0f,14f,0f],RightArm:[0f,346f,0f],LeftLeg:[10f,314f,0f],RightLeg:[22f,0f,342f],Head:[32f,0f,0f]},HandItems:[{id:"minecraft:stick",Count:1b,tag:{CustomModelData:364}},{}],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:6356992}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:6356992}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:6356992}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-104173839,-119059828,-1176408581,-1181112487],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzJiNzIwZDFkODUzNjRhZThhNDZlZGFhNzQ5YTE1NGUyN2VhZWQ3YjE4N2U0MmMwZmU1ZGIwNmI3MGVlY2U5YiJ9fX0="}]}}}}]}
tp @e[type=armor_stand,tag=M.ArmorStandThis,distance=..0.01] @s
tag @e[type=armor_stand,tag=M.ArmorStandThis,distance=..0.01] remove M.ArmorStandThis
scoreboard players set @s M.Tick -15
