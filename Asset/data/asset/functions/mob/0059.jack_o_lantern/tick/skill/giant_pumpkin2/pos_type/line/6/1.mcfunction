#> asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/pos_type/line/6/1
#
# 1直線に並べて転がす.1
#
# @within function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/*

# Rotationを設定して召喚
    data modify storage api: Argument.FieldOverride.RotationX set value 0.0
    execute positioned ^7.5 ^0 ^-9 run function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/summon

    data modify storage api: Argument.FieldOverride.RotationX set value 0.0
    execute positioned ^4.5 ^0 ^-9 run function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/summon

    data modify storage api: Argument.FieldOverride.RotationX set value 0.0
    execute positioned ^1.5 ^0 ^-9 run function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/summon

    data modify storage api: Argument.FieldOverride.RotationX set value 0.0
    execute positioned ^-1.5 ^0 ^-9 run function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/summon

    data modify storage api: Argument.FieldOverride.RotationX set value 0.0
    execute positioned ^-4.5 ^0 ^-9 run function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/summon

    data modify storage api: Argument.FieldOverride.RotationX set value 0.0
    execute positioned ^-7.5 ^0 ^-9 run function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/summon
