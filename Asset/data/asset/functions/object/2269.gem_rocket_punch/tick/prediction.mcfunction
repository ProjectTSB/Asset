#> asset:object/2269.gem_rocket_punch/tick/prediction
#
# Objectのtick時の処理
#
# @within asset:object/2269.gem_rocket_punch/tick/

# 予告
    data modify storage api: Argument.ID set value 2113
    data modify storage api: Argument.FieldOverride.RotationX set from entity @s Rotation[0]
    data modify storage api: Argument.FieldOverride.Color set value 3381759
    data modify storage api: Argument.FieldOverride.Scale set value [10f,70f]
    data modify storage api: Argument.FieldOverride.Interpolation set value 15
    data modify storage api: Argument.FieldOverride.Tick set value 50
    execute positioned ^ ^0.1 ^ rotated ~ 0 run function api:object/summon
