#> asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/pos_type/line_with_space/4
#
# 1つ隙間を空けて1直線に転がす.4
#
# @within function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/*

# Rotationを設定して召喚
    execute positioned ^-9 ^0 ^7.5 rotated 270 0 run function asset:mob/0059.jack_o_lantern/tick/skill/common/giant_pumpkin/

# 内側の4つのうちランダムな1つを実行しない
    execute store result score $Random Temporary run random value 0..3
    execute unless score $Random Temporary matches 0 positioned ^-9 ^0 ^4.5 rotated 270 0 run function asset:mob/0059.jack_o_lantern/tick/skill/common/giant_pumpkin/
    execute unless score $Random Temporary matches 1 positioned ^-9 ^0 ^1.5 rotated 270 0 run function asset:mob/0059.jack_o_lantern/tick/skill/common/giant_pumpkin/
    execute unless score $Random Temporary matches 2 positioned ^-9 ^0 ^-1.5 rotated 270 0 run function asset:mob/0059.jack_o_lantern/tick/skill/common/giant_pumpkin/
    execute unless score $Random Temporary matches 3 positioned ^-9 ^0 ^-4.5 rotated 270 0 run function asset:mob/0059.jack_o_lantern/tick/skill/common/giant_pumpkin/
    scoreboard players reset $Random Temporary

    execute positioned ^-9 ^0 ^-7.5 rotated 270 0 run function asset:mob/0059.jack_o_lantern/tick/skill/common/giant_pumpkin/
