#> asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/pos_type/line_with_space/3
#
# 1つ隙間を空けて1直線に転がす.3
#
# @within function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/*

# Rotationを設定して召喚
    execute positioned ^7.5 ^0 ^9 rotated 180 0 run function asset:mob/0059.jack_o_lantern/tick/skill/common/giant_pumpkin/neutral

# 内側の4つのうちランダムな1つを実行しない
    execute store result score $Random Temporary run random value 0..3
    execute unless score $Random Temporary matches 0 positioned ^4.5 ^0 ^9 rotated 180 0 run function asset:mob/0059.jack_o_lantern/tick/skill/common/giant_pumpkin/neutral
    execute unless score $Random Temporary matches 1 positioned ^1.5 ^0 ^9 rotated 180 0 run function asset:mob/0059.jack_o_lantern/tick/skill/common/giant_pumpkin/neutral
    execute unless score $Random Temporary matches 2 positioned ^-1.5 ^0 ^9 rotated 180 0 run function asset:mob/0059.jack_o_lantern/tick/skill/common/giant_pumpkin/neutral
    execute unless score $Random Temporary matches 3 positioned ^-4.5 ^0 ^9 rotated 180 0 run function asset:mob/0059.jack_o_lantern/tick/skill/common/giant_pumpkin/neutral
    scoreboard players reset $Random Temporary

    execute positioned ^-7.5 ^0 ^9 rotated 180 0 run function asset:mob/0059.jack_o_lantern/tick/skill/common/giant_pumpkin/neutral
