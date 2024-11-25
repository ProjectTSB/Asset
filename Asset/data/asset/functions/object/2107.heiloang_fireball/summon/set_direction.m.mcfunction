#> asset:object/2107.heiloang_fireball/summon/set_direction.m
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:object/2107.heiloang_fireball/summon/

# 元となるEntityを召喚する
    $summon marker ~ ~ ~ {Tags:["ObjectInit"],Rotation:$(Rotation)}
