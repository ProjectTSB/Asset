#> asset:object/2279.magic_circle/summon/
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within function asset:object/alias/2279/summon

# 実行向きのyawとpitchを召喚引数へ渡す
    execute as 0-0-0-0-0 in minecraft:overworld positioned as @s run tp @s ~ ~ ~ ~ ~
    data modify storage asset:temp Args.Rotation set from entity 0-0-0-0-0 Rotation
    function asset:object/2279.magic_circle/summon/.m with storage asset:temp Args
    data remove storage asset:temp Args
