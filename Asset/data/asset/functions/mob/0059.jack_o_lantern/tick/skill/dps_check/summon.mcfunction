#> asset:mob/0059.jack_o_lantern/tick/skill/dps_check/summon
#
#
#
# @within function asset:mob/0059.jack_o_lantern/tick/skill/dps_check/first_tick

    data modify storage api: Argument.ID set value 2039
    data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Damage.DPSCheck
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    function api:object/summon
