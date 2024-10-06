#> asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/pos_type/2
#
#
#
# @within function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/1.main

    data modify storage api: Argument.FieldOverride.Rotation set value [180.0f,0.0f]
    execute positioned ^-1.5 ^0 ^10 run function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/summon

    data modify storage api: Argument.FieldOverride.Rotation set value [180.0f,0.0f]
    execute positioned ^4.5 ^0 ^10 run function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/summon

    data modify storage api: Argument.FieldOverride.Rotation set value [180.0f,0.0f]
    execute positioned ^-7.5 ^0 ^10 run function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/summon

    data modify storage api: Argument.FieldOverride.Rotation set value [270.0f,0.0f]
    execute positioned ^-10 ^0 ^-1.5 run function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/summon

    data modify storage api: Argument.FieldOverride.Rotation set value [270.0f,0.0f]
    execute positioned ^-10 ^0 ^4.5 run function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/summon

    data modify storage api: Argument.FieldOverride.Rotation set value [270.0f,0.0f]
    execute positioned ^-10 ^0 ^-7.5 run function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/summon
