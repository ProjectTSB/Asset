#> asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/pos_type/line/3/3
#
#
#
# @within function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/*

# Rotationを設定して召喚
    data modify storage api: Argument.FieldOverride.Rotation set value [180.0f,0.0f]
    execute positioned ^0 ^0 ^9 run function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/summon

    data modify storage api: Argument.FieldOverride.Rotation set value [180.0f,0.0f]
    execute positioned ^3 ^0 ^9 run function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/summon

    data modify storage api: Argument.FieldOverride.Rotation set value [180.0f,0.0f]
    execute positioned ^-3 ^0 ^9 run function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/summon
