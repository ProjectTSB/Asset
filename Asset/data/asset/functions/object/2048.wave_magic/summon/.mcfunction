#> asset:object/2048.wave_magic/summon/
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:object/alias/2048/summon

# 元となるEntityを召喚する
    function asset:object/2048.wave_magic/summon/.m with storage asset:context this

# 実装フラグを立てる
    data modify storage asset:object Implement set value true
