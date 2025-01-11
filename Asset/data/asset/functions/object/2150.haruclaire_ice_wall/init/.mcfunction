#> asset:object/2150.haruclaire_ice_wall/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/2150/init

# 角度をランダムに設定
    execute store result entity @s Rotation[0] float 1 run random value -180..180

# 位置合わせ
    tp @s ~ ~-0.45 ~

# 見た目追加
    summon item_display ~ ~ ~ {Tags:["2150.Append"],interpolation_duration:5,teleport_duration:1,brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0f,0f,0f]},item:{id:"minecraft:stick",Count:1b,tag:{CustomModelData:20461}}}
    ride @e[type=item_display,tag=2150.Append,tag=!2150.Ride,sort=nearest,limit=1] mount @s
    execute rotated as @s on passengers run tp @s ~ ~ ~ ~-45 ~
    execute on passengers run tag @s add 2150.Ride
