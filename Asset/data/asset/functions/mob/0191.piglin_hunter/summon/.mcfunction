#> asset:mob/0191.piglin_hunter/summon/
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:mob/alias/191/summon

# 元となるEntityを召喚する
    summon piglin ~ ~ ~ {Tags:["MobInit"],IsBaby:0b,IsImmuneToZombification:1b}
