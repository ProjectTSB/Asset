#> asset:object/2173.heiloang_thunder_spin_attack/summon/m
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:object/2173.heiloang_thunder_spin_attack/summon/

# 元となるEntityを召喚する
    $summon marker ~ ~ ~ {Tags:["ObjectInit","BE.Object"],Rotation:$(Rotation)}
