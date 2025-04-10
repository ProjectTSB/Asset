#> asset:object/1141.big_water_balloon/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/1141/init

#> ここでだけ使うタグ
# @private
    #declare tag Init

# 見た目のItem displayを召喚して、自分の乗り物の上に乗っける
# 雪玉自体のデータ変更ではないのはサイズの変更とかをしたいため。
    summon item_display ~ ~ ~ {Tags:["Init","AutoKillWhenDieVehicle","ProcessCommonTag"],billboard:"center",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.5f,1.5f,1.5f]},item:{id:"minecraft:leather_horse_armor",Count:1b,tag:{display:{color:16711680},CustomModelData:20560}}}
    execute on vehicle run ride @e[type=item_display,tag=Init,sort=nearest,limit=1] mount @s
    tag @e[type=item_display,tag=Init,sort=nearest,limit=1] remove Init

# Motionで射出
    data modify storage lib: Argument.VectorMagnitude set from storage asset:context this.Speed
    execute on vehicle at @s run function lib:motion/

# Super
    function asset:object/super.init
