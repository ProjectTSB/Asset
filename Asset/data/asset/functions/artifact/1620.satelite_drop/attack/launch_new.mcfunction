#> asset:artifact/1620.satelite_drop/attack/launch_new
#
#
#
# @within function asset:artifact/1620.satelite_drop/attack/

    data modify storage api: Argument.FieldOverride.LaunchInstantly set value true
    data modify storage api: Argument.FieldOverride.Count set value 1
    data modify storage api: Argument.FieldOverride.Damage set value 150
    data modify storage api: Argument.FieldOverride.AttackType set value "Magic"
    data modify storage api: Argument.FieldOverride.ElementType set value "Water"
    execute store result storage api: Argument.FieldOverride.UserID int 1 run scoreboard players get @s UserID
    data modify storage api: Argument.ID set value 1192
    function api:object/summon

    execute anchored eyes positioned ^ ^-0.1 ^0.5 as @e[type=marker,scores={ObjectID=1192},distance=..3] if score @s O1192.UserID = @p[tag=this] UserID rotated as @p[tag=this] run tp @s ^ ^ ^ ~ ~
