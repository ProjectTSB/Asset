#> asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/pos_type/line_with_space/2
#
# 1つ隙間を空けて1直線に転がす.2
#
# @within function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/*

# Rotationを設定して召喚
    data modify storage api: Argument.FieldOverride.RotationX set value 90.0
    execute positioned ^9 ^0 ^7.5 run function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/summon

# 内側の4つのうちランダムな1つを実行しない
    execute store result score $Random Temporary run function lib:random/
    scoreboard players operation $Random Temporary %= $4 Const

    execute unless score $Random Temporary matches 0 run data modify storage api: Argument.FieldOverride.RotationX set value 90.0
    execute unless score $Random Temporary matches 0 positioned ^9 ^0 ^4.5 run function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/summon

    execute unless score $Random Temporary matches 1 run data modify storage api: Argument.FieldOverride.RotationX set value 90.0
    execute unless score $Random Temporary matches 1 positioned ^9 ^0 ^1.5 run function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/summon

    execute unless score $Random Temporary matches 2 run data modify storage api: Argument.FieldOverride.RotationX set value 90.0
    execute unless score $Random Temporary matches 2 positioned ^9 ^0 ^-1.5 run function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/summon

    execute unless score $Random Temporary matches 3 run data modify storage api: Argument.FieldOverride.RotationX set value 90.0
    execute unless score $Random Temporary matches 3 positioned ^9 ^0 ^-4.5 run function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/summon

    scoreboard players reset $Random Temporary

    data modify storage api: Argument.FieldOverride.RotationX set value 90.0
    execute positioned ^9 ^0 ^-7.5 run function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/summon
