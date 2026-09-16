#> asset:object/1188.banishing_ring/summon/
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:object/alias/1188/summon

# 元となるEntityを召喚する
    summon item_display ~ ~ ~ {Tags:["ObjectInit"],item:{id:"minecraft:stick", Count:1b, tag:{CustomModelData:20650}}, brightness:{block:15,sky:15}}
