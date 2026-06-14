#> asset:object/1160.electric_catfish/summon/
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:object/alias/1160/summon

# 元となるEntityを召喚する
    summon item_display ~ ~ ~ {Tags:["ObjectInit", "Friend"], item:{id:"minecraft:dark_oak_planks", Count:1b}}
