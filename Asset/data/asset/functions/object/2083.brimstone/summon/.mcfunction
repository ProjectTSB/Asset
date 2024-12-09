#> asset:object/2083.brimstone/summon/
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:object/alias/2083/summon

# 元となるEntityを召喚する
    summon item_display ~ ~ ~ {Tags:["ObjectInit"],item:{id:"minecraft:honey_block",Count:1b},teleport_duration:1}
