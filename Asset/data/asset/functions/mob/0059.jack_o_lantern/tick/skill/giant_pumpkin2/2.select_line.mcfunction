#> asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/2.select_line
#
# ランダムな方向から1列に並べて転がす
#
# @within function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/1.main

# ランダムな方向から召喚する
    execute store result score $Random Temporary run function lib:random/
    scoreboard players operation $Random Temporary %= $4 Const
    execute if score $Random Temporary matches 0 run function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/pos_type/line/1
    execute if score $Random Temporary matches 1 run function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/pos_type/line/2
    execute if score $Random Temporary matches 2 run function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/pos_type/line/3
    execute if score $Random Temporary matches 3 run function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/pos_type/line/4
    scoreboard players reset $Random Temporary
