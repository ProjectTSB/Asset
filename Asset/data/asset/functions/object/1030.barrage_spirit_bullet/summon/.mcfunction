#> asset:object/1030.barrage_spirit_bullet/summon/
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:object/alias/1030/summon

# 召喚
    execute as 0-0-0-0-0 in minecraft:overworld positioned as @s run tp @s ~ ~ ~ ~ ~
    data modify storage asset:temp Args.Rotation set from entity 0-0-0-0-0 Rotation
    function asset:object/1030.barrage_spirit_bullet/summon/m with storage asset:temp Args
    data remove storage asset:temp Args
