#> asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/pos_type/line/6/2
#
# 1直線に並べて転がす.2
#
# @within function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/*

# Rotationを設定して召喚
    data modify storage api: Argument.FieldOverride.RotationX set value 90.0
    execute positioned ^9 ^0 ^7.5 run function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/summon

    data modify storage api: Argument.FieldOverride.RotationX set value 90.0
    execute positioned ^9 ^0 ^4.5 run function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/summon

    data modify storage api: Argument.FieldOverride.RotationX set value 90.0
    execute positioned ^9 ^0 ^1.5 run function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/summon

    data modify storage api: Argument.FieldOverride.RotationX set value 90.0
    execute positioned ^9 ^0 ^-1.5 run function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/summon

    data modify storage api: Argument.FieldOverride.RotationX set value 90.0
    execute positioned ^9 ^0 ^-4.5 run function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/summon

    data modify storage api: Argument.FieldOverride.RotationX set value 90.0
    execute positioned ^9 ^0 ^-7.5 run function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/summon
