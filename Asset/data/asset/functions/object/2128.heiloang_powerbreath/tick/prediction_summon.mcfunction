#> asset:object/2128.heiloang_powerbreath/tick/prediction_summon
#
# Objectのtick時の処理
#
# @within asset:object/2128.heiloang_powerbreath/tick/prediction

# 予告
    tp @s ~ ~ ~ ~ 0
    data modify storage api: Argument.ID set value 2113
    data modify storage api: Argument.FieldOverride.RotationX set from entity @s Rotation[0]
    data modify storage api: Argument.FieldOverride.Color set value 16761175
    data modify storage api: Argument.FieldOverride.Scale set value [4f,20f]
    data modify storage api: Argument.FieldOverride.Interpolation set value 10
    data modify storage api: Argument.FieldOverride.Tick set value 15
    execute positioned ^ ^1 ^1 run function api:object/summon
