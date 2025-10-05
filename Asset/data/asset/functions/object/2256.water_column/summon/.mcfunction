#> asset:object/2256.water_column/summon/
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:object/alias/2256/summon

# 元となるEntityを召喚する
    execute store result storage asset:context this.Translation float 0.005 run data get storage asset:context this.Scale 100
    function asset:object/2256.water_column/summon/m with storage asset:context this
