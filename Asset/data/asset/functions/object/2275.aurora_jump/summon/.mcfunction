#> asset:object/2275.aurora_jump/summon/
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:object/alias/2275/summon

# 元となるEntityを召喚する

# 位置調整する 何故かテクスチャ側だけじゃどうにもならなかったのでゴリ押し
    data modify storage asset:temp Args.Scale set value [0f,0f,0.01f]
    data modify storage asset:temp Args.Scale[0] set from storage asset:context this.Scale
    data modify storage asset:temp Args.Scale[1] set from storage asset:context this.Scale

    data modify storage asset:temp Args.Translation set value [0f,0f,0f]
    execute store result storage asset:temp Args.Translation[0] float 0.000125 run data get storage asset:context this.Scale 100
    execute store result storage asset:temp Args.Translation[1] float -0.00075 run data get storage asset:context this.Scale 100
    function asset:object/2275.aurora_jump/summon/m with storage asset:temp Args
    data remove storage asset:temp Args
