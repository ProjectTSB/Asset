#> asset:object/2031.giant_pumpkin/summon/
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:object/alias/2031/summon

# 元となるEntityを召喚する
    execute as 0-0-0-0-0 in minecraft:overworld positioned as @s run tp @s ~ ~ ~ ~ 0
    data modify storage asset:temp Args.Rotation set from entity 0-0-0-0-0 Rotation
    data modify storage asset:temp Args.FaceID set from storage asset:context this.FaceID
    function asset:object/2031.giant_pumpkin/summon/m with storage asset:temp Args
    data remove storage asset:temp Args
