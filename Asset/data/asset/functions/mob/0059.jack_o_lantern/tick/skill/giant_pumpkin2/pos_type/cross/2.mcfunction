#> asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/pos_type/cross/2
#
# 網目状に転がす.2
#
# @within function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/*

    data modify storage api: Argument.FieldOverride.Rotation set value [90.0f,0.0f]
    execute positioned ^9 ^0 ^0 run function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/5.summon

    data modify storage api: Argument.FieldOverride.Rotation set value [90.0f,0.0f]
    execute positioned ^9 ^0 ^6 run function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/5.summon

    data modify storage api: Argument.FieldOverride.Rotation set value [90.0f,0.0f]
    execute positioned ^9 ^0 ^-6 run function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/5.summon
