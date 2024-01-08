#> asset:mob/0343.louvert_meteor/summon/init
#
# 初期化処理
#
# @within function asset:mob/0343.louvert_meteor/summon/2.summon

#> val
# @within function asset:mob/0343.louvert_meteor/summon/*
    #declare score_holder $9J.Temp

# スコア初期化
    scoreboard players set @s 9J.Tick 0

# ループ処理
    scoreboard players set $9J.Temp Temporary 32
    execute if block ~ ~ ~ #lib:no_collision unless block ~ ~-0.25 ~ #lib:no_collision run scoreboard players set $9J.Temp Temporary -100
    execute if score $9J.Temp Temporary matches 1.. run function asset:mob/0343.louvert_meteor/summon/init_loop

# ループしてもダメだったらキル
    execute if score $9J.Temp Temporary matches 0 run kill @s

# ディスプレイを召喚する
    execute at @s run summon item_display ~ ~16 ~ {Tags:["9J.Display","9J.Display.Init"],start_interpolation:0,teleport_duration:60,billboard:"center",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:fire_charge",Count:1b}}
    execute at @s positioned ~ ~16 ~ as @e[type=item_display,tag=9J.Display.Init,distance=..0.001] run tp @s ~ ~-16 ~

# リセット
    scoreboard players reset $9J.Temp Temporary
    execute at @s run tag @e[type=item_display,tag=9J.Display.Init,distance=..0.001] remove 9J.Display.Init
    tag @s remove 9J.Init