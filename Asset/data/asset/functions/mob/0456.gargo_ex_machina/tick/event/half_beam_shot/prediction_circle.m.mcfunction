#> asset:mob/0456.gargo_ex_machina/tick/event/half_beam_sword/prediction_circle.m
#
# 半面焼きビーム
#
# @within asset:mob/0456.gargo_ex_machina/tick/event/half_beam_sword/event_charging

# 予告：円範囲
    data modify storage api: Argument.ID set value 2063
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    data modify storage api: Argument.FieldOverride.Color set value 3381759
    data modify storage api: Argument.FieldOverride.Scale set value [40f, 40f, 0.05f]
    $data modify storage api: Argument.FieldOverride.Tick set value $(Tick)
    execute positioned ^ ^0.2 ^ rotated ~ 0 run function api:object/summon
