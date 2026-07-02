#> asset:effect/374.charge_plasma/end/attack/1/m
#
# Object 1168を召喚
#
# @within function asset:effect/374.charge_plasma/end/attack/1/rec

    data modify storage api: Argument.ID set value 1168
    data modify storage api: Argument.FieldOverride.AdditionalMPHeal set from storage api: PersistentArgument.AdditionalMPHeal
    execute store result storage api: Argument.FieldOverride.UserID int 1 run scoreboard players get @s UserID
    $execute positioned ^$(OffsetX) ^$(OffsetY) ^$(OffsetZ) run function api:object/summon
