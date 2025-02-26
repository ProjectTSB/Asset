#> asset:object/1101.tnt/summon/
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:object/alias/1101/summon

# 元となるEntityを召喚する
    summon armor_stand ~ ~ ~ {Tags:["ObjectInit"],Marker:1b,Passengers:[{id:"minecraft:tnt",fuse:40s}]}
