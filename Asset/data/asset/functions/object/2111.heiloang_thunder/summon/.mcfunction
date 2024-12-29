#> asset:object/2111.heiloang_thunder/summon/
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:object/alias/2111/summon

# 元となるEntityを召喚する
    summon text_display ~ ~ ~ {Tags:["ObjectInit","BE.Object"]}
