#> asset:object/2129.heiloang_plamet_pursuit/summon/m
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:object/2129.heiloang_plamet_pursuit/summon/

# 元となるEntityを召喚する
    $summon item_display ~ ~ ~ {Tags:["ObjectInit"],Rotation:$(Rotation)}
