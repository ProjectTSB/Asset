#> asset:object/2074.water_magic/tick/summon_announce
#
#
#
# @within function asset:object/2074.water_magic/tick/

# 予告を召喚
    data modify storage api: Argument.ID set value 2063
    data modify storage api: Argument.FieldOverride set value {Tick:5,Color:2851071,Scale:[4.5f,4.5f,0.01f]}
    function api:object/summon
