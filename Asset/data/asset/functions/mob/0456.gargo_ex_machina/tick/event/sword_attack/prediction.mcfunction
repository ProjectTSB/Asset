#> asset:mob/0456.gargo_ex_machina/tick/event/sword_attack/prediction
#
# 剣叩きつけ
#
# @within asset:mob/0456.gargo_ex_machina/tick/event/sword_attack/event_charging

# 予告：円範囲
    data modify storage api: Argument.ID set value 2063
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    data modify storage api: Argument.FieldOverride.Color set value 3381759
    data modify storage api: Argument.FieldOverride.Scale set value [20f, 20f, 0.05f]
    data modify storage api: Argument.FieldOverride.Tick set value 50
    execute positioned ^ ^0.2 ^ rotated ~ 0 run function api:object/summon

# 予告
    data modify storage api: Argument.ID set value 2113
    data modify storage api: Argument.FieldOverride.RotationX set from entity @s Rotation[0]
    data modify storage api: Argument.FieldOverride.Color set value 3381759
    data modify storage api: Argument.FieldOverride.Scale set value [8f,50f]
    data modify storage api: Argument.FieldOverride.Interpolation set value 30
    data modify storage api: Argument.FieldOverride.Tick set value 50
    execute positioned ^ ^0.1 ^ rotated ~ 0 run function api:object/summon
    data modify storage api: Argument.ID set value 2113
    data modify storage api: Argument.FieldOverride.RotationX set from entity @s Rotation[0]
    data modify storage api: Argument.FieldOverride.Color set value 3381759
    data modify storage api: Argument.FieldOverride.Scale set value [8f,50f]
    data modify storage api: Argument.FieldOverride.Interpolation set value 30
    data modify storage api: Argument.FieldOverride.Tick set value 50
    execute positioned ^ ^0.1 ^ rotated ~60 0 run function api:object/summon
    data modify storage api: Argument.ID set value 2113
    data modify storage api: Argument.FieldOverride.RotationX set from entity @s Rotation[0]
    data modify storage api: Argument.FieldOverride.Color set value 3381759
    data modify storage api: Argument.FieldOverride.Scale set value [8f,50f]
    data modify storage api: Argument.FieldOverride.Interpolation set value 30
    data modify storage api: Argument.FieldOverride.Tick set value 50
    execute positioned ^ ^0.1 ^ rotated ~-60 0 run function api:object/summon
    data modify storage api: Argument.ID set value 2113
    data modify storage api: Argument.FieldOverride.RotationX set from entity @s Rotation[0]
    data modify storage api: Argument.FieldOverride.Color set value 3381759
    data modify storage api: Argument.FieldOverride.Scale set value [8f,50f]
    data modify storage api: Argument.FieldOverride.Interpolation set value 30
    data modify storage api: Argument.FieldOverride.Tick set value 50
    execute positioned ^ ^0.1 ^ rotated ~120 0 run function api:object/summon
    data modify storage api: Argument.ID set value 2113
    data modify storage api: Argument.FieldOverride.RotationX set from entity @s Rotation[0]
    data modify storage api: Argument.FieldOverride.Color set value 3381759
    data modify storage api: Argument.FieldOverride.Scale set value [8f,50f]
    data modify storage api: Argument.FieldOverride.Interpolation set value 30
    data modify storage api: Argument.FieldOverride.Tick set value 50
    execute positioned ^ ^0.1 ^ rotated ~-120 0 run function api:object/summon
    data modify storage api: Argument.ID set value 2113
    data modify storage api: Argument.FieldOverride.RotationX set from entity @s Rotation[0]
    data modify storage api: Argument.FieldOverride.Color set value 3381759
    data modify storage api: Argument.FieldOverride.Scale set value [8f,50f]
    data modify storage api: Argument.FieldOverride.Interpolation set value 30
    data modify storage api: Argument.FieldOverride.Tick set value 50
    execute positioned ^ ^0.1 ^ rotated ~180 0 run function api:object/summon
