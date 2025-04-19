#> asset:mob/0410.heiloang/tick/event/power_breath/prediction_line_summon
#
# Objectのtick時の処理
#
# @within asset:mob/0410.heiloang/tick/event/power_breath/prediction_line.m

# 予告
    tp @s ~ ~ ~ ~ 0
    data modify storage api: Argument.ID set value 2113
    data modify storage api: Argument.FieldOverride.RotationX set from entity @s Rotation[0]
    data modify storage api: Argument.FieldOverride.Color set value 16761175
    data modify storage api: Argument.FieldOverride.Scale set value [4f,20f]
    data modify storage api: Argument.FieldOverride.Interpolation set value 20
    data modify storage api: Argument.FieldOverride.Tick set value 50
    execute positioned ^ ^ ^1 run function api:object/summon
