#> asset:object/1061.azure_jelly/summon/
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:object/alias/1061/summon

# 元となるEntityを召喚する
    summon item_display ~ ~ ~ {Tags:["ObjectInit"],teleport_duration:1,item:{id:"blue_stained_glass",Count:1b}}
