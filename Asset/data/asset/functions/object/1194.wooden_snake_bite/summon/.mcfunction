#> asset:object/1194.wooden_snake_bite/summon/
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:object/alias/1194/summon

# 元となるEntityを召喚する
    summon text_display ~ ~ ~ {Tags:["ObjectInit"],billboard:"center",background:16711680,brightness:{sky:15,block:15}}
