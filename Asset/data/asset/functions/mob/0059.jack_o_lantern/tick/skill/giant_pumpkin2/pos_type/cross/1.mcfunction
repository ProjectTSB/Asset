#> asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/pos_type/cross/1
#
# 網目状に転がす.1
#
# @within function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/*

# Rotationを設定して召喚
    data modify storage api: Argument.FieldOverride.RotationX set value 0.0
    execute positioned ^0 ^0 ^-9 run function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/summon

    data modify storage api: Argument.FieldOverride.RotationX set value 0.0
    execute positioned ^6 ^0 ^-9 run function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/summon

    data modify storage api: Argument.FieldOverride.RotationX set value 0.0
    execute positioned ^-6 ^0 ^-9 run function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/summon
