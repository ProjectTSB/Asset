#> asset:mob/0301.sinful_thoughts/init/
# @within asset:mob/alias/301/init

# 見た目用のアマスタを召喚
    summon armor_stand ~ ~ ~ {Marker:1b,NoBasePlate:1b,Invisible:1b,Tags:["8D.ArmorStand","8D.ArmorStandThis","Object","Uninterferable"],Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f],Head:[0f,0f,0f]},HandItems:[{id:"minecraft:stick",Count:1b,tag:{CustomModelData:20254}},{id:"minecraft:stick",Count:1b,tag:{CustomModelData:20252}}],ArmorItems:[{},{},{},{id:"minecraft:stick",Count:1b,tag:{CustomModelData:20256}}]}
# 位置を合わせる
    execute at @s run tp @e[type=armor_stand,tag=8D.ArmorStandThis,distance=..0.01] @s
# タグを消す
    tag @e[type=armor_stand,tag=8D.ArmorStandThis,distance=..0.01] remove 8D.ArmorStandThis
# スコアをセットする
    scoreboard players set @s 8D.Tick -100
# 最大HPをスコアに入れる
    execute store result score @s 8D.HealthMax run data get storage asset:mob Health 1
