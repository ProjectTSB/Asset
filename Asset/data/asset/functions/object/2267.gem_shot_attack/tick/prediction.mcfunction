#> asset:object/2267.gem_shot_attack/tick/prediction
#
# Objectのtick時の処理
#
# @within asset:object/2267.gem_shot_attack/tick/

# 地面が無ければ消す
    execute if block ~ ~-1 ~ #lib:no_collision run return run kill @s

# 予告
    tp @s ~ ~ ~ ~ 0
    data modify storage api: Argument.ID set value 2113
    data modify storage api: Argument.FieldOverride.RotationX set from entity @s Rotation[0]
    data modify storage api: Argument.FieldOverride.Color set value 3381759
    data modify storage api: Argument.FieldOverride.Scale set value [10f,8f]
    data modify storage api: Argument.FieldOverride.Interpolation set value 10
    data modify storage api: Argument.FieldOverride.Tick set value 35
    execute positioned ^ ^0.5 ^-4 run function api:object/summon
