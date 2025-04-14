#> asset:mob/0439.dps_checker_boy/summon/
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:mob/alias/439/summon

# 元となるEntityを召喚する
    execute as 0-0-0-0-0 in minecraft:overworld positioned as @s run tp @s ~ ~ ~ ~ ~
    data modify storage asset:temp Args.Rotation set from entity 0-0-0-0-0 Rotation
    function asset:mob/0439.dps_checker_boy/summon/m with storage asset:temp Args
    data remove storage asset:temp Args
