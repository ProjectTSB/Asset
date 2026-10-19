#> asset:artifact/1620.satelite_drop/attack/launch_new
#
#
#
# @within function asset:artifact/1620.satelite_drop/attack/

    data modify storage api: Argument.FieldOverride.LaunchInstantly set value true
    data modify storage api: Argument.FieldOverride.Count set value 1
    data modify storage api: Argument.ID set value 1192
    function api:object/summon

    execute anchored eyes positioned ^ ^-0.1 ^0.5 run tp @e[type=marker,distance=..3,limit=1] ^ ^ ^ ~ ~
