#> asset:mob/0341.louvert/tick/projectile/fire_magic/0.summon
#
# 火炎陣 召喚
#
# @within function asset:mob/0341.louvert/**

# 元となるMobを召喚する
    summon item_display ~ ~ ~ {Tags:["9H.FireMagic","9H.Temp.This"],item:{id:"minecraft:potion",Count:1b,tag:{CustomPotionColor:16753152,CustomModelData:20343}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0.707f,0f,0f,0.707f],translation:[0f,0.05f,0f],scale:[0f,0.2f,0f]}}

# 初期化処理
    execute as @e[type=item_display,tag=9H.Temp.This,distance=..0.01] at @s run function asset:mob/0341.louvert/tick/projectile/fire_magic/2.init