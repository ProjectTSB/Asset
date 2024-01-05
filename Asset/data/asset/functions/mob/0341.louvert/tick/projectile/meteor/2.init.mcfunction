#> asset:mob/0341.louvert/tick/projectile/meteor/2.init
#
# 初期化処理
#
# @within function asset:mob/0341.louvert/tick/projectile/meteor/0.summon

# スコア初期化
    scoreboard players set @s 9H.ProjectileTick 0

# ループ処理
    scoreboard players set $9H.Temp Temporary 32
    execute if block ~ ~ ~ #lib:no_collision unless block ~ ~-0.25 ~ #lib:no_collision run scoreboard players set $9H.Temp Temporary -100
    execute if score $9H.Temp Temporary matches 1.. run function asset:mob/0341.louvert/tick/projectile/fire_magic/2.1.loop

# ループしてもダメだったらキル
    execute if score $9H.Temp Temporary matches 0 run kill @s

# ディスプレイを召喚する
    execute at @s run summon item_display ~ ~16 ~ {Tags:["9H.Meteor.Display","9H.Temp.This"],start_interpolation:-1,teleport_duration:60,billboard:"center",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:fire_charge",Count:1b}}
    execute at @s positioned ~ ~16 ~ as @e[type=item_display,tag=9H.Temp.This,distance=..0.001] run tp @s ~ ~-16 ~

# リセット
    scoreboard players reset $9H.Temp Temporary
    execute at @s run tag @e[tag=9H.Temp.This,distance=..0.001] remove 9H.Temp.This