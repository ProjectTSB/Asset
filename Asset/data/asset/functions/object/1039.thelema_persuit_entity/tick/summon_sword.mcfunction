#> asset:object/1039.thelema_persuit_entity/tick/summon_sword
#
# テレームの剣を召喚する
#
# @within function asset:object/1039.thelema_persuit_entity/tick/

# 召喚
    data modify storage api: Argument.ID set value 1040
    data modify storage api: Argument.FieldOverride.UserID set from storage asset:context this.UserID
    data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Damage
    function api:object/summon
