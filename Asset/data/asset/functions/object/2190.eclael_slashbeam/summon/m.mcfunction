#> asset:object/2190.eclael_slashbeam/summon/m
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:object/2190.eclael_slashbeam/summon/

# 元となるEntityを召喚する
    $summon marker ~ ~ ~ {Tags:["ObjectInit"],Rotation:$(Rotation)}
