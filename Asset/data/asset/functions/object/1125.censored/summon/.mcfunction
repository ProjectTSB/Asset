#> asset:object/1125.censored/summon/
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:object/alias/1125/summon

# 元となるEntityを召喚する
    summon item_display ~ ~ ~ {billboard:"vertical",Tags:["ObjectInit"],item:{id:"minecraft:stick",Count:1b,tag:{CustomModelData:20140}}}
