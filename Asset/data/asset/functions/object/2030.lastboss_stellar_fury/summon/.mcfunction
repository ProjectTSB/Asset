#> asset:object/2030.lastboss_stellar_fury/summon/
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:object/alias/2030/summon

# 元となるEntityを召喚する
    summon item_display ~ ~ ~ {brightness:{block:15,sky:15},billboard:"center",teleport_duration:1,Tags:["ObjectInit"],item:{id:"minecraft:leather_horse_armor",Count:1b,tag:{display:{color:16777215},CustomModelData:20380}}}
