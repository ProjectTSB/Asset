#> asset:object/2041.lastboss_thunder/summon/
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:object/alias/2041/summon

# 元となるEntityを召喚する
    summon marker ~ ~ ~ {Tags:["ObjectInit"]}

# 実装フラグを立てる
    data modify storage asset:object Implement set value true