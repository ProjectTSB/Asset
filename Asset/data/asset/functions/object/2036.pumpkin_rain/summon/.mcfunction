#> asset:object/2036.pumpkin_rain/summon/
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:object/alias/2036/summon

# フィールド未設定の場合の初期化
    execute unless data storage asset:context this.FaceID run data modify storage asset:context this.FaceID set value 1

# 元となるEntityを召喚する
    function asset:object/2036.pumpkin_rain/summon/.m with storage asset:context this

# 実装フラグを立てる
    data modify storage asset:object Implement set value true
