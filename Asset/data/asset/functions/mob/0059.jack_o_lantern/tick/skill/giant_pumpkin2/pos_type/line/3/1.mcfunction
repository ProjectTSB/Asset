#> asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/pos_type/line/3/1
#
#
#
# @within function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/*

# Rotationを設定して召喚
    data modify storage api: Argument.FieldOverride.RotationX set value 0.0
    execute positioned ^0 ^0 ^-9 run function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/summon

    data modify storage api: Argument.FieldOverride.RotationX set value 0.0
    execute positioned ^3 ^0 ^-9 run function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/summon

    data modify storage api: Argument.FieldOverride.RotationX set value 0.0
    execute positioned ^-3 ^0 ^-9 run function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/summon
