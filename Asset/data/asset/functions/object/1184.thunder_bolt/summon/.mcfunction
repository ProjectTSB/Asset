#> asset:object/1184.thunder_bolt/summon/
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:object/alias/1184/summon

# 元となるEntityを召喚する
    summon text_display ~ ~ ~ {Tags:["ObjectInit"],billboard:"vertical",background:16711680,brightness:{sky:15,block:15}}
