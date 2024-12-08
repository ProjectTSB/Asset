#> asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/pos_type/line/3/4
#
#
#
# @within function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/*

# Rotationを設定して召喚
    data modify storage api: Argument.FieldOverride.RotationX set value 270
    execute positioned ^-9 ^0 ^0 run function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/summon

    data modify storage api: Argument.FieldOverride.RotationX set value 270
    execute positioned ^-9 ^0 ^3 run function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/summon

    data modify storage api: Argument.FieldOverride.RotationX set value 270
    execute positioned ^-9 ^0 ^-3 run function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/summon
