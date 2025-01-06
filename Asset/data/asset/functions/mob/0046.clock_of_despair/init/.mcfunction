#> asset:mob/0046.clock_of_despair/init/
# @within asset:mob/alias/46/init

summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["1A.ClockHand","Object","Uninterferable"]}
execute at @s as @e[type=armor_stand,tag=1A.ClockHand,distance=..1,sort=nearest,limit=1] run tp @s
scoreboard players set @s 1A.LifeTime -1

summon item_display ~ ~ ~ {item:{id:"minecraft:stick",Count:1b,tag:{CustomModelData:20388}},transformation:{left_rotation:[0f,0.000f,0f,1.000f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.05f,0f],scale:[22f,0f,22f]},Tags:["1A.ClockFrame","Object","Uninterferable"]}
summon item_display ~ ~ ~ {item:{id:"minecraft:stick",Count:1b,tag:{CustomModelData:20389}},transformation:{left_rotation:[0f,0.259f,0f,0.966f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.05f,0f],scale:[22f,0f,22f]},Tags:["1A.ClockFrame","Object","Uninterferable"]}
summon item_display ~ ~ ~ {item:{id:"minecraft:stick",Count:1b,tag:{CustomModelData:20389}},transformation:{left_rotation:[0f,0.500f,0f,0.866f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.05f,0f],scale:[22f,0f,22f]},Tags:["1A.ClockFrame","Object","Uninterferable"]}

# super 呼び出し
    function asset:mob/super.init
