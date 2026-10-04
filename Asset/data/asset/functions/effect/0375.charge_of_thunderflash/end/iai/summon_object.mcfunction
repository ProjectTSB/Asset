#> asset:effect/0375.charge_of_thunderflash/end/iai/summon_object
#
#
#
# @within function asset:effect/0375.charge_of_thunderflash/end/iai/

# 召喚
    data modify storage api: Argument.ID set value 1167
    data modify storage api: Argument.FieldOverride.Delay set from storage asset:context this.Delay
    data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Damage.Second
    execute store result storage api: Argument.FieldOverride.Range int 1 run scoreboard players get $MaxRange Temporary
    function api:object/summon
