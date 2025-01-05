#> asset:object/2037.defeated_pumpkin/summon/
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:object/alias/2037/summon

# フィールド設定
    execute unless data storage asset:context this.RotationX run data modify storage asset:context this.RotationX set value 0.0f

# 元となるEntityを召喚する
    function asset:object/2037.defeated_pumpkin/summon/.m with storage asset:context this
