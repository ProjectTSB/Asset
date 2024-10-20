#> asset:mob/0046.clock_of_despair/init/
# @within asset:mob/alias/46/init

summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["1A.ClockHand","Object","Uninterferable"]}
summon item_display ~ ~ ~ {Rotation:[0F,0F],Tags:["1A.ClockDisplay","Object","Uninterferable"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[9f,9f,9f]},item:{id:"minecraft:stick",Count:1b,tag:{CustomModelData:20225}}}
execute as @e[type=armor_stand,tag=1A.ClockHand,distance=..1,sort=nearest,limit=1] run tp @s
scoreboard players set @s 1A.LifeTime -1
