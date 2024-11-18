#> asset:object/1059.book_of_hero/summon/
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:object/alias/1059/summon

# 元となるEntityを召喚する
    summon item_display ~ ~ ~ {Tags:["ObjectInit","Friend"],teleport_duration:1,item:{id:"minecraft:leather_horse_armor",Count:1b,tag:{display:{color:16101097},CustomModelData:20138}}}
