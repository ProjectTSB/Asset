#> asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/pos_type/line_with_space/3
#
# 1つ隙間を空けて1直線に転がす.3
#
# @within function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/*

# Rotationを設定して召喚
    data modify storage api: Argument.FieldOverride.RotationX set value 180.0
    execute positioned ^7.5 ^0 ^9 run function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/summon

# 内側の4つのうちランダムな1つを実行しない
    execute store result score $Random Temporary run function lib:random/
    scoreboard players operation $Random Temporary %= $4 Const

    execute unless score $Random Temporary matches 0 run data modify storage api: Argument.FieldOverride.RotationX set value 180.0
    execute unless score $Random Temporary matches 0 positioned ^4.5 ^0 ^9 run function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/summon

    execute unless score $Random Temporary matches 1 run data modify storage api: Argument.FieldOverride.RotationX set value 180.0
    execute unless score $Random Temporary matches 1 positioned ^1.5 ^0 ^9 run function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/summon

    execute unless score $Random Temporary matches 2 run data modify storage api: Argument.FieldOverride.RotationX set value 180.0
    execute unless score $Random Temporary matches 2 positioned ^-1.5 ^0 ^9 run function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/summon

    execute unless score $Random Temporary matches 3 run data modify storage api: Argument.FieldOverride.RotationX set value 180.0
    execute unless score $Random Temporary matches 3 positioned ^-4.5 ^0 ^9 run function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/summon

    scoreboard players reset $Random Temporary

    data modify storage api: Argument.FieldOverride.RotationX set value 180.0
    execute positioned ^-7.5 ^0 ^9 run function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/summon
