#> asset:mob/0188.piglin_elite/summon/
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:mob/alias/188/summon

# 元となるEntityを召喚する
    summon piglin_brute ~ ~ ~ {Tags:["MobInit"],IsImmuneToZombification:1b}
