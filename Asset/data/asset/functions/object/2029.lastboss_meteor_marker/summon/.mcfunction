#> asset:object/2029.lastboss_meteor_marker/summon/
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:object/alias/2029/summon

# 元となるEntityを召喚する
    summon item_display ~ ~ ~ {Tags:["ObjectInit"]}

# 実装フラグを立てる
    data modify storage asset:object Implement set value true