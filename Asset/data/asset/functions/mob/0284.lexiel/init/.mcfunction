#> asset:mob/0284.lexiel/init/
# @within asset:mob/alias/284/init

# 見た目用のアマスタを召喚
    summon snowball ~ ~ ~ {NoGravity:1b,Item:{id:"minecraft:debug_stick",Count:1b,tag:{CustomModelData:4040}},Tags:["7W.ModelCore","7W.ModelCoreThis","Object","Uninterferable"],Passengers:[{id:"minecraft:armor_stand",NoGravity:1b,Silent:1b,Marker:0b,Invisible:1b,Tags:["7W.Model","7W.ModelHead","Object","AllowProcessingCommonTag","AutoKillWhenDieVehicle","Uninterferable"],Pose:{Head:[25f,0.1f,0.1f]},DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:stick",Count:1b,tag:{CustomModelData:20296}}]},{id:"minecraft:armor_stand",NoGravity:1b,Silent:1b,Marker:0b,Invisible:1b,Tags:["7W.Model","7W.ModelBody","Object","AllowProcessingCommonTag","AutoKillWhenDieVehicle","Uninterferable"],Pose:{LeftArm:[-115f,0f,-75f],RightArm:[-90f,0f,75f],Head:[0.1f,0.1f,0.1f]},DisabledSlots:4144959,HandItems:[{id:"minecraft:stick",Count:1b,tag:{CustomModelData:20286}},{id:"minecraft:stick",Count:1b,tag:{CustomModelData:20289}}],ArmorItems:[{},{},{},{id:"minecraft:stick",Count:1b,tag:{CustomModelData:20290}}]}]}
# 位置をあわせる
    execute at @s run tp @e[type=armor_stand,tag=7W.ModelCoreThis,distance=..0.01] @s
# タグを消す
    tag @e[type=armor_stand,tag=7W.ModelCoreThis,distance=..0.01] remove 7W.ModelCoreThis
# スコアをセットする
    scoreboard players set @s 7W.Tick 0
# 最大HPをスコアに入れる
    execute store result score @s 7W.HealthMax run data get storage asset:mob Health 1
