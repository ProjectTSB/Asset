#> asset:object/2127.heiloang_ice_vfx/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/2127/init

# 回転
    execute if predicate lib:random_pass_per/30 at @s run tp @s ~ ~ ~ ~30 ~
    execute if predicate lib:random_pass_per/30 at @s run tp @s ~ ~ ~ ~30 ~
    execute if predicate lib:random_pass_per/30 at @s run tp @s ~ ~ ~ ~30 ~
    execute if predicate lib:random_pass_per/30 at @s run tp @s ~ ~ ~ ~30 ~

# サブ召喚
    summon item_display ~ ~ ~ {Tags:["2127.Append","BE.Object"],teleport_duration:3,interpolation_duration:3,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,-1f,0f],scale:[0f,0f,0f]},item:{id:"minecraft:stick",Count:1b,tag:{CustomModelData:20453}}}
    execute at @s as @e[type=item_display,tag=2127.Append,sort=nearest,limit=1] run tp @s ~ ~ ~ ~45 ~
    ride @e[type=item_display,tag=2127.Append,sort=nearest,limit=1] mount @s

# KillTick設定
    execute store result score @s 2127.KillTick run random value 0..3
    scoreboard players add @s 2127.KillTick 12
    execute if data storage asset:context this.OverrideKillTick store result score @s 2127.KillTick run data get storage asset:context this.OverrideKillTick
