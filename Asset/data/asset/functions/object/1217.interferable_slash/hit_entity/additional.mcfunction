#> asset:object/1217.interferable_slash/hit_entity/additional
#
#
#
# @within function asset:object/1217.interferable_slash/hit_entity/reinforced.m


# Object1217を召喚
    data modify storage api: Argument.ID set value 1217
    data modify storage api: Argument.FieldOverride.UserID set from storage asset:context this.UserID
    data modify storage api: Argument.FieldOverride.IsAdditional set value true
    data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.AdditionalDamage
    function api:object/summon
