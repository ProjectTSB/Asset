#> asset:object/2120.heiloang_thunder_vfx/summon/
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:object/alias/2120/summon

# 元となるEntityを召喚する
    execute unless data storage asset:context this.Rotation run data modify storage asset:context this.Rotation set value [0f,0f]
    function asset:object/2120.heiloang_thunder_vfx/summon/m with storage asset:context this
