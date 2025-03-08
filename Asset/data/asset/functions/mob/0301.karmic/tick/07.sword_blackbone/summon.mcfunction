#> asset:mob/0301.karmic/tick/07.sword_blackbone/summon
#
#
#
# @within function asset:mob/0301.karmic/tick/07.sword_blackbone/main

# Object召喚
    data modify storage api: Argument.ID set value 2217
    data modify storage api: Argument.FieldOverride.Damage set value {Sword:14f,Shot:10f}
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    function api:object/summon
