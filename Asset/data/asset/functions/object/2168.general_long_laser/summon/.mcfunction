#> asset:object/2168.general_long_laser/summon/
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:object/alias/2168/summon

# 元となるエンティティを召喚
    execute as 0-0-0-0-0 positioned as @s run tp @s ~ ~ ~ ~ ~
    data modify storage asset:temp Args.CustomModelData set from storage asset:context this.CustomModelData
    data modify storage asset:temp Args.Color set from storage asset:context this.Color
    data modify storage asset:temp Args.Rotation set from entity 0-0-0-0-0 Rotation
    function asset:object/2168.general_long_laser/summon/m with storage asset:temp Args
    data remove storage asset:temp Args
