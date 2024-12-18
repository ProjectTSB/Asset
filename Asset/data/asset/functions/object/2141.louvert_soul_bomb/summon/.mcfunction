#> asset:object/2141.louvert_soul_bomb/summon/
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:object/alias/2141/summon

# 元となるEntityを召喚する
    summon item_display ~ ~ ~ {teleport_duration:1,Tags:["ObjectInit"],item:{id:"minecraft:stick",Count:1b,tag:{CustomModelData:20341}}}
