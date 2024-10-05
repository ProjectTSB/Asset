#> asset:object/2031.giant_pumpkin/summon/
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:object/alias/2031/summon

# Rotation[1]を0にする
    data modify storage asset:context this.Rotation[1] set value 0.0f

# 元となるEntityを召喚する
    function asset:object/2031.giant_pumpkin/summon/.m with storage asset:context this

# 実装フラグを立てる
    data modify storage asset:object Implement set value true
