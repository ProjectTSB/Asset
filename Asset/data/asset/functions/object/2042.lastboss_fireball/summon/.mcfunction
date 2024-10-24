#> asset:object/2042.lastboss_fireball/summon/
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:object/alias/2042/summon

# 元となるEntityを召喚する
    summon item_display ~ ~ ~ {billboard:"center",teleport_duration:1,Tags:["ObjectInit"],item:{id:"minecraft:leather_horse_armor",Count:1b,tag:{display:{color:10694707},CustomModelData:20375}}}
