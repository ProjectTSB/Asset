#> asset:object/1141.big_water_balloon/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/1141/init

#> ここでだけ使うもの
# @private
    #declare tag Init

# 見た目のItem displayを召喚して、自分の乗り物の上に乗っける
# 雪玉自体のデータ変更ではないのはサイズの変更とかをしたいため。
# 乱数で色を決めようかな
    execute store result score @s Temporary run random value 0..5
    execute if score @s Temporary matches 0 run summon item_display ~ ~ ~ {Tags:["Init","AutoKillWhenDieVehicle","ProcessCommonTag"],billboard:"center",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.5f,1.5f,1.0f]},item:{id:"minecraft:leather_horse_armor",Count:1b,tag:{display:{color:16731212},CustomModelData:20560}}}
    execute if score @s Temporary matches 1 run summon item_display ~ ~ ~ {Tags:["Init","AutoKillWhenDieVehicle","ProcessCommonTag"],billboard:"center",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.5f,1.5f,1.0f]},item:{id:"minecraft:leather_horse_armor",Count:1b,tag:{display:{color:5046092},CustomModelData:20560}}}
    execute if score @s Temporary matches 2 run summon item_display ~ ~ ~ {Tags:["Init","AutoKillWhenDieVehicle","ProcessCommonTag"],billboard:"center",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.5f,1.5f,1.0f]},item:{id:"minecraft:leather_horse_armor",Count:1b,tag:{display:{color:5030143},CustomModelData:20560}}}
    execute if score @s Temporary matches 3 run summon item_display ~ ~ ~ {Tags:["Init","AutoKillWhenDieVehicle","ProcessCommonTag"],billboard:"center",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.5f,1.5f,1.0f]},item:{id:"minecraft:leather_horse_armor",Count:1b,tag:{display:{color:16187212},CustomModelData:20560}}}
    execute if score @s Temporary matches 4 run summon item_display ~ ~ ~ {Tags:["Init","AutoKillWhenDieVehicle","ProcessCommonTag"],billboard:"center",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.5f,1.5f,1.0f]},item:{id:"minecraft:leather_horse_armor",Count:1b,tag:{display:{color:16777215},CustomModelData:20560}}}
    execute if score @s Temporary matches 5 run summon item_display ~ ~ ~ {Tags:["Init","AutoKillWhenDieVehicle","ProcessCommonTag"],billboard:"center",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.5f,1.5f,1.0f]},item:{id:"minecraft:leather_horse_armor",Count:1b,tag:{display:{color:10308863},CustomModelData:20560}}}
# さっき召喚したものを、自分が乗ってる雪玉に乗せる
   execute on vehicle run ride @e[type=item_display,tag=Init,sort=nearest,limit=1] mount @s
    tag @e[type=item_display,tag=Init,sort=nearest,limit=1] remove Init

# Motionで射出
    #data modify storage lib: Argument.VectorMagnitude set from storage asset:context this.Speed
    #execute on vehicle at @s run function lib:motion/

# Super
    function asset:object/super.init
