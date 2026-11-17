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
    data modify storage api: Argument.FieldOverride.Speed set from storage asset:context this.Speed
    data modify storage api: Argument.FieldOverride.Range set from storage asset:context this.Range
    function api:object/summon

# 演出
    playsound entity.squid.squirt player @a ~ ~ ~ 1.75 2.0
    playsound entity.slime.attack player @a ~ ~ ~ 1.0 1.5
