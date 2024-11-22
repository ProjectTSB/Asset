#> asset:object/1061.azure_jelly/summon/
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:object/alias/1061/summon

# 元となるEntityを召喚する
    summon armor_stand ~ ~ ~ {Tags:["ObjectInit"],Marker:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:blue_stained_glass",Count:1b}]}
