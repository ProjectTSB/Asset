#> asset:object/2176.tiamat_darkbreath/tick/prediction
#
# Objectのtick時の処理
#
# @within asset:object/2176.tiamat_darkbreath/tick/

# 地面が無ければ消す
    execute if block ~ ~ ~ #lib:no_collision/ run return run kill @s

# 予告
    tp @s ~ ~ ~ ~ 0
    data modify storage api: Argument.ID set value 2113
    data modify storage api: Argument.FieldOverride.RotationX set from entity @s Rotation[0]
    data modify storage api: Argument.FieldOverride.Color set value 54783
    data modify storage api: Argument.FieldOverride.Scale set value [10f,8f]
    data modify storage api: Argument.FieldOverride.Interpolation set value 10
    data modify storage api: Argument.FieldOverride.Tick set value 35
    execute positioned ^ ^0.5 ^-4 run function api:object/summon

# 一定確率で角度反転
    execute if predicate lib:random_pass_per/50 at @s run tp @s ~ ~ ~ ~180 ~
