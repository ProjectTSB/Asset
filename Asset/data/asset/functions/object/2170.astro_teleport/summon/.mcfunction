#> asset:object/2170.astro_teleport/summon/
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:object/alias/2170/summon

# 元となるEntityを召喚する
    summon marker ~ ~ ~ {Tags:["ObjectInit"]}
