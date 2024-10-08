#> asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/pos_type/line/3
#
# 1直線に並べて転がす.3
#
# @within function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/2.select_line

# Rotationを設定して召喚
    data modify storage api: Argument.FieldOverride.Rotation set value [180.0f,0.0f]
    execute positioned ^7.5 ^0 ^9 run function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/summon

    data modify storage api: Argument.FieldOverride.Rotation set value [180.0f,0.0f]
    execute positioned ^4.5 ^0 ^9 run function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/summon

    data modify storage api: Argument.FieldOverride.Rotation set value [180.0f,0.0f]
    execute positioned ^1.5 ^0 ^9 run function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/summon

    data modify storage api: Argument.FieldOverride.Rotation set value [180.0f,0.0f]
    execute positioned ^-1.5 ^0 ^9 run function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/summon

    data modify storage api: Argument.FieldOverride.Rotation set value [180.0f,0.0f]
    execute positioned ^-4.5 ^0 ^9 run function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/summon

    data modify storage api: Argument.FieldOverride.Rotation set value [180.0f,0.0f]
    execute positioned ^-7.5 ^0 ^9 run function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/summon
