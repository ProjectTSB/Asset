#> asset:object/2044.lastboss_ice_bullet/summon/
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:object/alias/2044/summon

# 元となるEntityを召喚する
    summon item_display ~ ~ ~ {brightness:{block:15,sky:15},billboard:"center",teleport_duration:1,Tags:["ObjectInit"],item:{id:"minecraft:leather_horse_armor",Count:1b,tag:{display:{color:7862527},CustomModelData:20375}}}
