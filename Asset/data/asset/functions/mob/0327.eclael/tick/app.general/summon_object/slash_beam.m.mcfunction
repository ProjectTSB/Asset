#> asset:mob/0327.eclael/tick/app.general/summon_object/slash_beam.m
#
# @input args:
#   Angle : float
# @within function asset:mob/0327.eclael/tick/app.skill_events/**

    data modify storage api: Argument.ID set value 2190
    data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Damage.Beam
    $data modify storage api: Argument.FieldOverride.Angle set value $(Angle)
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    function api:object/summon
