#> asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/2.select_straight
#
# 
#
# @within function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/1.main

# 疑似乱数取得
    execute store result score $Random Temporary run function lib:random/
# ほしい範囲に剰余算する
    scoreboard players operation $Random Temporary %= $4 Const

# 顔選択
    execute if score $Random Temporary matches 0 run function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/pos_type/straight1
    execute if score $Random Temporary matches 1 run function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/pos_type/straight2
    execute if score $Random Temporary matches 2 run function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/pos_type/straight3
    execute if score $Random Temporary matches 3 run function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/pos_type/straight4
# リセット
    scoreboard players reset $Random Temporary
