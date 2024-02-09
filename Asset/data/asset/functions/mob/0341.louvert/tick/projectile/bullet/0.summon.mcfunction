#> asset:mob/0341.louvert/tick/projectile/bullet/0.summon
#
# 弾幕 召喚
#
# @within function asset:mob/0341.louvert/**

# 元となるMobを召喚する
    summon item_display ~ ~ ~ {Tags:["9H.Temp.This","9H.Bullet"],billboard:"center",teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]},item:{id:"minecraft:potion",Count:1b,tag:{CustomModelData:20233,CustomPotionColor:16742144}}}

# 初期化処理
    tp @e[type=item_display,tag=9H.Temp.This,distance=..0.01] ^ ^ ^ ~ ~
    execute as @e[type=item_display,tag=9H.Temp.This,distance=..0.01] at @s run function asset:mob/0341.louvert/tick/projectile/bullet/2.init