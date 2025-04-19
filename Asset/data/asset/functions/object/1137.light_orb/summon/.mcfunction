#> asset:object/1137.light_orb/summon/
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:object/alias/1137/summon

# 元となるEntityを召喚する
    summon marker ~ ~ ~ {Tags:["ObjectInit"]}
