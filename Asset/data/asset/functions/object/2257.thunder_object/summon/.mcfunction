#> asset:object/2257.thunder_object/summon/
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:object/alias/2257/summon

# 元となるEntityを召喚する
    summon text_display ~ ~ ~ {Tags:["ObjectInit"],text:'{"text":"0","font":"object/2257"}',billboard:"vertical",background:16711680,brightness:{sky:15,block:15}}
