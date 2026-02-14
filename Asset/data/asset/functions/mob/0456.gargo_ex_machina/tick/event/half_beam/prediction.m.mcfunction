#> asset:mob/0456.gargo_ex_machina/tick/event/half_beam/prediction.m
#
# 半面焼きビーム
#
# @within asset:mob/0456.gargo_ex_machina/tick/event/half_beam/event_charging

# 予告
    data modify storage api: Argument.ID set value 2113
    data modify storage api: Argument.FieldOverride.RotationX set from entity @s Rotation[0]
    data modify storage api: Argument.FieldOverride.Color set value 3381759
    data modify storage api: Argument.FieldOverride.Scale set value [40f,80f]
    data modify storage api: Argument.FieldOverride.Interpolation set value 20
    $data modify storage api: Argument.FieldOverride.Tick set value $(Tick)
    execute positioned ^ ^0.1 ^40 rotated ~180 0 run function api:object/summon
