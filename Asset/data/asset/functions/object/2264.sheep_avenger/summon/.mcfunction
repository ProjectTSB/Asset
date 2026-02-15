#> asset:object/2264.sheep_avenger/summon/
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:object/alias/2264/summon

# 元となるEntityを召喚する
    summon item_display ~ ~ ~ {Tags:["ObjectInit","CO.Object","CO.ScapeSheep"]}
