#> asset:mob/0175.queen_bee/init/
# @within asset:mob/alias/175/init

summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["4V.ArmorStand","4V.ArmorStandThis","Object","Uninterferable"],ArmorItems:[{},{},{},{id:"minecraft:stone",Count:1b,tag:{CustomModelData:20052}}]}
tp @e[type=armor_stand,tag=4V.ArmorStandThis,distance=..0.01] @s
tag @e[type=armor_stand,tag=4V.ArmorStandThis,distance=..0.01] remove 4V.ArmorStandThis
scoreboard players set @s 4V.Tick -15

# スーパーメソッド呼び出し
    function asset:mob/super.init
