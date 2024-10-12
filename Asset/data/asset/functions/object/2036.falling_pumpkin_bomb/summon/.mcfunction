#> asset:object/2036.falling_pumpkin_bomb/summon/
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:object/alias/2036/summon

# 元となるEntityを召喚する
    function asset:object/2036.falling_pumpkin_bomb/summon/.m with storage asset:context this

# 実装フラグを立てる
    data modify storage asset:object Implement set value true
