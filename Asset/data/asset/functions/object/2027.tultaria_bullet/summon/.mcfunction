#> asset:object/2027.tultaria_bullet/summon/
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:object/alias/2027/summon

# 元となるEntityを召喚する
    summon item_display ~ ~ ~ {Tags:["ObjectInit"]}

# 実装フラグを立てる
    data modify storage asset:object Implement set value true