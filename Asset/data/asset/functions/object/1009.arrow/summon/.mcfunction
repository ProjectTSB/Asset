#> asset:object/1009.arrow/summon/
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:object/alias/1009/summon

# 元となるEntityを召喚する
    execute as 0-0-0-0-0 positioned as @s run tp @s ~ ~ ~ ~ ~

    data modify storage asset:temp Args.Color set from storage asset:context this.Color
    data modify storage asset:temp Args.Rotation set from entity 0-0-0-0-0 Rotation
    function asset:object/1009.arrow/summon/m with storage asset:temp Args
    data remove storage asset:temp Args
