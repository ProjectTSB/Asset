#> asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/pos_type/cross/4
#
#
#
# @within function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/*

    data modify storage api: Argument.FieldOverride.RotationX set value 270.0
    execute positioned ^-9 ^0 ^0 run function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/summon

    data modify storage api: Argument.FieldOverride.RotationX set value 270.0
    execute positioned ^-9 ^0 ^6 run function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/summon

    data modify storage api: Argument.FieldOverride.RotationX set value 270.0
    execute positioned ^-9 ^0 ^-6 run function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/summon
