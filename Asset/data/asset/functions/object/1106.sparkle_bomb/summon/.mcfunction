#> asset:object/1106.sparkle_bomb/summon/
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:object/alias/1106/summon

# 元となるEntityを召喚する
    execute as 0-0-0-0-0 in minecraft:overworld positioned as @s run tp @s ~ ~ ~ ~ ~
    data modify storage asset:temp Args.Rotation0 set from entity 0-0-0-0-0 Rotation[0]
    data modify storage asset:temp Args.Rotation1 set from entity 0-0-0-0-0 Rotation[1]
    function asset:object/1106.sparkle_bomb/summon/m with storage asset:temp Args
    data remove storage asset:temp Args
