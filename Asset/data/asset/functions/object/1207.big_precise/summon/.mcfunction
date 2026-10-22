#> asset:object/1207.big_precise/summon/
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:object/alias/1207/summon

# 元となるEntityを召喚する
    summon item_display ~ ~ ~ {Tags:["ObjectInit","PreCise.BigPrecise"],teleport_duration:1,item:{id:"minecraft:stick",Count:1b,tag:{CustomModelData:20670}}}
