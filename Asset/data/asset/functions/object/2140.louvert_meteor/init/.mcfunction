#> asset:object/2140.louvert_meteor/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/2140/init

# ループ処理
    scoreboard players set $2140.Temp Temporary 32
    execute if block ~ ~ ~ #lib:no_collision/ unless block ~ ~-0.25 ~ #lib:no_collision/ run scoreboard players set $2140.Temp Temporary -100
    execute if score $2140.Temp Temporary matches 1.. run function asset:object/2140.louvert_meteor/init/loop

# ループしてもダメだったらキル & return
    execute if score $2140.Temp Temporary matches 0 run kill @s
    execute if score $2140.Temp Temporary matches 0 run return run scoreboard players reset $2140.Temp Temporary

# ディスプレイを召喚する
    execute at @s run summon item_display ~ ~16 ~ {Tags:["2140.Meteor.Display","2140.Temp"],start_interpolation:0,teleport_duration:60,billboard:"center",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:fire_charge",Count:1b}}
    execute at @s positioned ~ ~16 ~ as @e[type=item_display,tag=2140.Temp,distance=..0.001] run tp @s ~ ~-16 ~

# 位置調整
    execute at @s run tp @s ~ ~ ~ ~ 0

# リセット
    scoreboard players reset $2140.Temp Temporary
    execute at @s run tag @e[tag=2140.Temp,distance=..0.001] remove 2140.Temp
