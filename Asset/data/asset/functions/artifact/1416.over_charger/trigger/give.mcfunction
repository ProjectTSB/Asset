#> asset:artifact/1416.over_charger/trigger/give
#
#
#
# @within function asset:artifact/1416.over_charger/trigger/3.main

# 演出
    particle dust 0.302 0.227 1 0.6 ~ ~-0.7 ~ 0.4 0.4 0.4 0 30 normal @a
    playsound tsb_sounds:electric1 player @a ~ ~ ~ 0.4 1.3
    playsound block.beacon.activate player @a ~ ~ ~ 1 1.8
    playsound entity.illusioner.prepare_blindness player @a ~ ~ ~ 1 1.2

# バフを付与
    data modify storage api: Argument.ID set value 398
    data modify storage api: Argument.Duration set value 400
    data modify storage api: Argument.FieldOverride.Modifier set value 0.15d
    data modify storage api: Argument.FieldOverride.ReduceMPPer set value 0.5d
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
