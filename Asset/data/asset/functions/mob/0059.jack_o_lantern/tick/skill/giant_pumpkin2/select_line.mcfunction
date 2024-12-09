#> asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/select_line
#
# ランダムな方向から1列に並べて転がす
#
# @within function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/

# ランダムな方向から召喚する
    execute store result score $Random Temporary run function lib:random/
    scoreboard players operation $Random Temporary %= $4 Const

# ノーマル以下
    execute if score $Random Temporary matches 0 if predicate api:global_vars/difficulty/max/normal run function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/pos_type/line/3/1
    execute if score $Random Temporary matches 1 if predicate api:global_vars/difficulty/max/normal run function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/pos_type/line/3/2
    execute if score $Random Temporary matches 2 if predicate api:global_vars/difficulty/max/normal run function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/pos_type/line/3/3
    execute if score $Random Temporary matches 3 if predicate api:global_vars/difficulty/max/normal run function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/pos_type/line/3/4

# ハード以上
    execute if score $Random Temporary matches 0 if predicate api:global_vars/difficulty/min/hard run function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/pos_type/line/6/1
    execute if score $Random Temporary matches 1 if predicate api:global_vars/difficulty/min/hard run function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/pos_type/line/6/2
    execute if score $Random Temporary matches 2 if predicate api:global_vars/difficulty/min/hard run function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/pos_type/line/6/3
    execute if score $Random Temporary matches 3 if predicate api:global_vars/difficulty/min/hard run function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/pos_type/line/6/4

# リセット
    scoreboard players reset $Random Temporary
