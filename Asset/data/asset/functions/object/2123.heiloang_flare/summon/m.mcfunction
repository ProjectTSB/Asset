#> asset:object/2123.heiloang_flare/summon/m
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:object/2123.heiloang_flare/summon/

# 元となるEntityを召喚する
    $summon item_display ~ ~ ~ {Tags:["ObjectInit","BE.Object"],Rotation:$(Rotation)}
