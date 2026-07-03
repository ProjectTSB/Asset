#> asset:object/2014.dimension_sword/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/2014/init

# マーカーを呼ぶ
    tp 0-0-0-0-0 ^ ^ ^ ~ ~

# 演出のためにランダムな方向を向かせる
    execute store result entity 0-0-0-0-0 Rotation[0] float 0.01 run random value 0..35999

# TP
    execute at 0-0-0-0-0 run tp @s ~ ~ ~ ~ 0

# マーカーを戻してあげる
    execute in overworld run tp 0-0-0-0-0 0.0 0.0 0.0

# ループ処理
    scoreboard players set $2014.Temp Temporary 16
    execute if block ~ ~ ~ #lib:no_collision/ unless block ~ ~-0.5 ~ #lib:no_collision/ run scoreboard players set $2014.Temp Temporary -100
    execute at @s if score $2014.Temp Temporary matches 1.. run function asset:object/2014.dimension_sword/init/loop

# ループしてもダメだったらキル
    execute if score $2014.Temp Temporary matches 0 run kill @s

# ディスプレイを召喚する
    execute unless score $2014.Temp Temporary matches 0 at @s run summon item_display ~ ~60 ~ {Tags:["2014.DimSwordDisplay","2014.Temp"],start_interpolation:0,teleport_duration:40,transformation:{left_rotation:[1f,0f,0f,0f],right_rotation:[0f,0f,0f,1f],translation:[0f,-5f,0f],scale:[3f,3f,3f]},item:{id:"minecraft:stick",Count:1b,tag:{CustomModelData:20363}}}
    execute unless score $2014.Temp Temporary matches 0 at @s positioned ~ ~60 ~ as @e[type=item_display,tag=2014.Temp,distance=..0.001] run tp @s ~ ~-60 ~ ~ ~

# リセット
    scoreboard players reset $2014.Temp Temporary
    tag @e[tag=2014.Temp,distance=..0.01] remove 2014.Temp
