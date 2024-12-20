#> asset:object/2129.heiloang_plamet_pursuit/tick/prediction
#
# Objectのtick時の処理
#
# @within asset:object/2129.heiloang_plamet_pursuit/tick/

# 予告
    tp @s ~ ~ ~ ~ 0
    data modify storage api: Argument.ID set value 2113
    data modify storage api: Argument.FieldOverride.RotationX set from entity @s Rotation[0]
    data modify storage api: Argument.FieldOverride.Color set value 16761175
    data modify storage api: Argument.FieldOverride.Scale set value [5f,6f]
    data modify storage api: Argument.FieldOverride.Interpolation set value 10
    data modify storage api: Argument.FieldOverride.Tick set value 30
    execute positioned ^ ^ ^-3 run function api:object/summon
