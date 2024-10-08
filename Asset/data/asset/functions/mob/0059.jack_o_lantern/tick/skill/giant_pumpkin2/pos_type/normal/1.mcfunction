#> asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/pos_type/normal/1
#
# 網目状に転がす.1
#
# @within function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/1.main

# Rotationを設定して召喚
    data modify storage api: Argument.FieldOverride.Rotation set value [0.0f,0.0f]
    execute positioned ^1.5 ^0 ^-9 run function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/summon

    data modify storage api: Argument.FieldOverride.Rotation set value [0.0f,0.0f]
    execute positioned ^7.5 ^0 ^-9 run function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/summon

    data modify storage api: Argument.FieldOverride.Rotation set value [0.0f,0.0f]
    execute positioned ^-4.5 ^0 ^-9 run function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/summon

    data modify storage api: Argument.FieldOverride.Rotation set value [90.0f,0.0f]
    execute positioned ^9 ^0 ^1.5 run function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/summon

    data modify storage api: Argument.FieldOverride.Rotation set value [90.0f,0.0f]
    execute positioned ^9 ^0 ^7.5 run function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/summon

    data modify storage api: Argument.FieldOverride.Rotation set value [90.0f,0.0f]
    execute positioned ^9 ^0 ^-4.5 run function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/summon
