#> asset:object/1217.interferable_slash/summon/
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:object/alias/1217/summon

# 元となるEntityを召喚する
    execute as 0-0-0-0-0 in overworld positioned as @s run tp @s ^ ^ ^ ~ ~
    data modify storage asset:temp Args.Rotation set from entity 0-0-0-0-0 Rotation
    function asset:object/1217.interferable_slash/summon/m with storage asset:temp Args
    data remove storage asset:temp Args
