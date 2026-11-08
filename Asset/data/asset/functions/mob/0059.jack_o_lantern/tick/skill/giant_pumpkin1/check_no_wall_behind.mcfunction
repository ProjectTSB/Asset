#> asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin1/check_no_wall_behind
#
# 後ろに壁がないなら成功とするif function
#
# @within function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin1/motion

# 後ろnブロックが壁なら0を返す
    execute unless block ^ ^ ^-1 #lib:no_collision/ run return 0
    execute unless block ^ ^ ^-2 #lib:no_collision/ run return 0
    execute unless block ^ ^ ^-3 #lib:no_collision/ run return 0
    execute unless block ^ ^ ^-4 #lib:no_collision/ run return 0
    execute unless block ^ ^ ^-5 #lib:no_collision/ run return 0
    execute unless block ^ ^ ^-6 #lib:no_collision/ run return 0
    execute unless block ^ ^ ^-7 #lib:no_collision/ run return 0

# 成功
    return 1
