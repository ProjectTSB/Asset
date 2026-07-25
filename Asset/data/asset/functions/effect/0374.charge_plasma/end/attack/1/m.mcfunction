#> asset:effect/0374.charge_plasma/end/attack/1/m
#
# Object 1168を召喚
#
# @within function asset:effect/0374.charge_plasma/end/attack/1/rec

    data modify storage api: Argument.ID set value 1168
    data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.DamagePool[0]
    data modify storage api: Argument.FieldOverride.AdditionalMPHeal set from storage api: PersistentArgument.AdditionalMPHeal
    data modify storage api: Argument.FieldOverride.AttackType set from storage asset:context this.AttackType
    data modify storage api: Argument.FieldOverride.ElementType set from storage asset:context this.ElementType
    execute store result storage api: Argument.FieldOverride.UserID int 1 run scoreboard players get @s UserID
    $execute positioned ^$(OffsetX) ^$(OffsetY) ^$(OffsetZ) run function api:object/summon
