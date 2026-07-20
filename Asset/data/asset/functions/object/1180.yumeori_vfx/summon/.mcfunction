#> asset:object/1180.yumeori_vfx/summon/
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:object/alias/1180/summon

# 元となるEntityを召喚する
    execute as 0-0-0-0-0 in minecraft:overworld positioned as @s run tp @s ~ ~ ~ ~ ~
    data modify storage asset:temp Args.Rotation set from entity 0-0-0-0-0 Rotation
    data modify storage asset:temp Args.Scale set from storage asset:context this.Scale
    data modify storage asset:temp Args.Translation set value [0f,0f,0f]

# 位置調整する 何故かテクスチャ側だけじゃどうにもならなかったのでゴリ押し
    execute store result storage asset:temp Args.Translation[0] float 0.000125 run data get storage asset:context this.Scale[0] 100
    execute store result storage asset:temp Args.Translation[1] float -0.00075 run data get storage asset:context this.Scale[1] 100
    function asset:object/1180.yumeori_vfx/summon/m with storage asset:temp Args
    data remove storage asset:temp Args
