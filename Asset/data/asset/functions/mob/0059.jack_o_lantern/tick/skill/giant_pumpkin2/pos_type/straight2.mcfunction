#> asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/pos_type/straight2
#
#
#
# @within function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/2.select_straight

    data modify storage api: Argument.FieldOverride.Rotation set value [90.0f,0.0f]
    execute positioned ^9 ^0 ^7.5 run function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/summon

    data modify storage api: Argument.FieldOverride.Rotation set value [90.0f,0.0f]
    execute positioned ^9 ^0 ^4.5 run function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/summon

    data modify storage api: Argument.FieldOverride.Rotation set value [90.0f,0.0f]
    execute positioned ^9 ^0 ^1.5 run function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/summon

    data modify storage api: Argument.FieldOverride.Rotation set value [90.0f,0.0f]
    execute positioned ^9 ^0 ^-1.5 run function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/summon

    data modify storage api: Argument.FieldOverride.Rotation set value [90.0f,0.0f]
    execute positioned ^9 ^0 ^-4.5 run function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/summon

    data modify storage api: Argument.FieldOverride.Rotation set value [90.0f,0.0f]
    execute positioned ^9 ^0 ^-7.5 run function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/summon
