#> asset:object/2203.sonicbomber_destroyed/summon/
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:object/alias/2203/summon

# 元となるEntityを召喚する
    execute as 0-0-0-0-0 in minecraft:overworld positioned as @s run tp @s ~ ~ ~ ~ 0
    data modify storage asset:temp Args.Rotation set from entity 0-0-0-0-0 Rotation

    function asset:object/2203.sonicbomber_destroyed/summon/.m with storage asset:temp Args

# reset
    data remove storage asset:temp Args
