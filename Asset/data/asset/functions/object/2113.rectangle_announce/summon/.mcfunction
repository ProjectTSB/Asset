#> asset:object/2113.rectangle_announce/summon/
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:object/alias/2113/summon

# ScaleからXだけ取り出す
    data modify storage asset:temp Args.ScaleX set from storage asset:context this.Scale[0]

# Color
    data modify storage asset:temp Args.Color set from storage asset:context this.Color

# 元となるEntityを召喚する
    execute as 0-0-0-0-0 in minecraft:overworld positioned as @s run tp @s ~ ~ ~ ~ ~
    data modify storage asset:temp Args.RotationX set from entity 0-0-0-0-0 Rotation[0]
    function asset:object/2113.rectangle_announce/summon/.m with storage asset:temp Args
    data remove storage asset:temp Args
