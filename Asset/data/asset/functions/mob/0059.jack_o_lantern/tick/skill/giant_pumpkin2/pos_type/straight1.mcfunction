#> asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/pos_type/straight1
#
#
#
# @within function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/2.select_straight

    data modify storage api: Argument.FieldOverride.Rotation set value [0.0f,0.0f]
    execute positioned ^7.5 ^0 ^-9 run function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/summon

    data modify storage api: Argument.FieldOverride.Rotation set value [0.0f,0.0f]
    execute positioned ^4.5 ^0 ^-9 run function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/summon

    data modify storage api: Argument.FieldOverride.Rotation set value [0.0f,0.0f]
    execute positioned ^1.5 ^0 ^-9 run function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/summon

    data modify storage api: Argument.FieldOverride.Rotation set value [0.0f,0.0f]
    execute positioned ^-1.5 ^0 ^-9 run function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/summon

    data modify storage api: Argument.FieldOverride.Rotation set value [0.0f,0.0f]
    execute positioned ^-4.5 ^0 ^-9 run function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/summon

    data modify storage api: Argument.FieldOverride.Rotation set value [0.0f,0.0f]
    execute positioned ^-7.5 ^0 ^-9 run function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/summon
