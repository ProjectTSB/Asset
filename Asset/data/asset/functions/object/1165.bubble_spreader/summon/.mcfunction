#> asset:object/1165.bubble_spreader/summon/
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:object/alias/1165/summon

# 元となるEntityを召喚する
    execute as 0-0-0-0-0 in minecraft:overworld positioned as @s run tp @s ~ ~ ~ ~ ~
    data modify storage asset:temp Args.Rotation set from entity 0-0-0-0-0 Rotation
    execute store result storage asset:temp Args.Size double 0.005 run random value 200..250
    function asset:object/1165.bubble_spreader/summon/m with storage asset:temp Args
    data remove storage asset:temp Args
