#> asset:object/2085.mine_dispenser/summon/
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:object/alias/2085/summon

# 元となるEntityを召喚する
    execute as 0-0-0-0-0 in minecraft:overworld positioned as @s run tp @s ~ ~ ~ ~ ~
    data modify storage asset:temp Args.Rotation set from entity 0-0-0-0-0 Rotation

    function asset:object/2085.mine_dispenser/summon/.m with storage asset:temp Args

# reset
    data remove storage asset:temp Args
