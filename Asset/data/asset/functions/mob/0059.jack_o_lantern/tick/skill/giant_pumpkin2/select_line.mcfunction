#> asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/select_line
#
# ランダムな方向から1列に並べて転がす
#
# @within function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/

# ランダムな方向から召喚する
    execute store result score $Random Temporary run random value 0..3

# ノーマル以下
    execute if score $Random Temporary matches 0 if predicate api:global_vars/difficulty/max/2_hard run function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/pos_type/line/3/1
    execute if score $Random Temporary matches 1 if predicate api:global_vars/difficulty/max/2_hard run function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/pos_type/line/3/2
    execute if score $Random Temporary matches 2 if predicate api:global_vars/difficulty/max/2_hard run function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/pos_type/line/3/3
    execute if score $Random Temporary matches 3 if predicate api:global_vars/difficulty/max/2_hard run function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/pos_type/line/3/4

# ハード以上
    execute if score $Random Temporary matches 0 if predicate api:global_vars/difficulty/min/3_blessless run function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/pos_type/line/4/1
    execute if score $Random Temporary matches 1 if predicate api:global_vars/difficulty/min/3_blessless run function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/pos_type/line/4/2
    execute if score $Random Temporary matches 2 if predicate api:global_vars/difficulty/min/3_blessless run function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/pos_type/line/4/3
    execute if score $Random Temporary matches 3 if predicate api:global_vars/difficulty/min/3_blessless run function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/pos_type/line/4/4

# リセット
    scoreboard players reset $Random Temporary
