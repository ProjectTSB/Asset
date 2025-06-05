#> asset:object/2156.haruclaire_icepillar/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/2156/init

# クリスタル表示
    summon item_display ~ ~ ~ {Tags:["2156.Append"],shadow_radius:1f,interpolation_duration:5,teleport_duration:1,brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,-2.2f,0f],scale:[0f,0f,0f]},item:{id:"minecraft:stick",Count:1b,tag:{CustomModelData:20465}}}
    ride @e[type=item_display,tag=2156.Append,tag=!2156.Ride,sort=nearest,limit=1] mount @s
    summon item_display ~ ~ ~ {Tags:["2156.Crystal"],interpolation_duration:5,teleport_duration:1,brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,-2.2f,0f],scale:[0f,0f,0f]},item:{id:"minecraft:stick",Count:1b,tag:{CustomModelData:20519}}}
    ride @e[type=item_display,tag=2156.Append,tag=!2156.Ride,sort=nearest,limit=1] mount @s
    ride @e[type=item_display,tag=2156.Crystal,tag=!2156.Ride,sort=nearest,limit=1] mount @s
    execute on passengers run tag @s add 2156.Ride
    execute on passengers run tp @s ~ ~ ~ ~ 0

# 回転方向決定
    execute if data storage asset:context this.IsRight run tag @s add 2156.Right
    # execute if predicate lib:random_pass_per/50 run tag @s add 2156.Right
