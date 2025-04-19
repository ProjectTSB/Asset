#> asset:object/2156.haruclaire_icepillar/tick/prediction
#
# Objectのtick時の処理
#
# @within asset:object/2156.haruclaire_icepillar/tick/

# 線表示
    summon item_display ~ ~ ~ {Tags:["2156.Append","2156.Prediction"],interpolation_duration:5,teleport_duration:1,brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0f,0f,30f]},item:{id:"minecraft:stick",Count:1b,tag:{CustomModelData:20498}}}
    execute if predicate api:global_vars/difficulty/min/hard run summon item_display ~ ~ ~ {Tags:["2156.Append","2156.Prediction","2156.Prediction.Turn"],interpolation_duration:5,teleport_duration:1,brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0f,0f,30f]},item:{id:"minecraft:stick",Count:1b,tag:{CustomModelData:20498}}}
    ride @e[type=item_display,tag=2156.Append,tag=2156.Prediction,tag=!2156.Ride,sort=nearest,limit=1] mount @s
    execute if predicate api:global_vars/difficulty/min/hard run ride @e[type=item_display,tag=2156.Append,tag=2156.Prediction.Turn,tag=!2156.Ride,sort=nearest,limit=1] mount @s
    execute on passengers if entity @s[tag=2156.Prediction] run tag @s add 2156.Ride
    execute on passengers if entity @s[tag=2156.Prediction] run tp @s ~ ~ ~ ~ ~
