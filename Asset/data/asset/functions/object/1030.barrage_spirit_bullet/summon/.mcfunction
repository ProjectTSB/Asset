#> asset:object/1030.barrage_spirit_bullet/summon/
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:object/alias/1030/summon

# 元となるEntityを召喚する
    summon item_display ~ ~ ~ {Tags:["ObjectInit"],teleport_duration:1,billboard:"center",item:{id:"minecraft:potion",Count:1b,tag:{CustomModelData:20234,CustomPotionColor:10274303}}}
