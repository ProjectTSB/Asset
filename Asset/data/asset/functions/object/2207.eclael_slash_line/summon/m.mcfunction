#> asset:object/2207.eclael_slash_line/summon/m
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:object/2207.eclael_slash_line/summon/

# 元となるEntityを召喚する
    $summon marker ~ ~ ~ {Tags:["ObjectInit"],Rotation:[$(Rotation)f,0f]}
