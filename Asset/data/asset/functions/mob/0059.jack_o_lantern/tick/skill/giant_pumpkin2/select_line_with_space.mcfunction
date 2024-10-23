#> asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/select_line_with_space
#
# 隙間を1箇所用意して転がす
#
# @within function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/

#> Private
# @private
    #declare tag 50Per

# 50%の判定
    execute if predicate lib:random_pass_per/50 run tag @s add 50Per

# カボチャを召喚
    execute if entity @s[tag=50Per] run function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/pos_type/line_with_space/1
    execute if entity @s[tag=!50Per] run function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/pos_type/line_with_space/3

# 判定Tagを削除
    tag @s remove 50Per

# 50%の判定
    execute if predicate lib:random_pass_per/50 run tag @s add 50Per

# カボチャを召喚
    execute if entity @s[tag=50Per] run function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/pos_type/line_with_space/2
    execute if entity @s[tag=!50Per] run function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/pos_type/line_with_space/4

# 判定Tagを削除
    tag @s remove 50Per
