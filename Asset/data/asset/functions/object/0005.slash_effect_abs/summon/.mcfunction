#> asset:object/0005.slash_effect_abs/summon/
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:object/alias/5/summon

# 元となるEntityを召喚する
    summon item_display ~ ~ ~ {Tags:["ObjectInit"]}

# 実装フラグを立てる
data modify storage asset:object Implement set value true