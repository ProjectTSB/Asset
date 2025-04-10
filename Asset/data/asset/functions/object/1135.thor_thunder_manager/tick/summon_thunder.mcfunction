#> asset:object/1135.thor_thunder_manager/tick/summon_thunder
#
#
#
# @within function
#   asset:object/1135.thor_thunder_manager/tick/
#   asset:object/1135.thor_thunder_manager/tick/spread

# Object召喚
    data modify storage api: Argument.ID set value 1136
    data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Damage
    data modify storage api: Argument.FieldOverride.UserID set from storage asset:context this.UserID
    function api:object/summon
