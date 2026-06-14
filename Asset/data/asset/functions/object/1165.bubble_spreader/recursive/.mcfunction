#> asset:object/1165.bubble_spreader/recursive/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/1165/recursive

# 何らかの理由で埋まってたらキルメソッド
    execute unless block ~ ~ ~ #lib:no_collision/ unless block ^ ^ ^-0.5 #lib:no_collision/ run return run function asset:object/call.m {method:kill}
# 演出
    particle minecraft:dust_color_transition 0.18 0.25 0.58 1 1.0 1.0 1.0 ~ ~ ~ 0 0 0 0 1
    particle minecraft:crit ~ ~ ~ 0 0 0 0 1
    #particle minecraft:bubble_pop ~ ~ ~ 0.1 0.1 0.1 0 1
    #particle minecraft:dust_color_transition 0.18 0.45 0.78 1 1.0 1.0 1.0 ^ ^ ^0.25 0 0 0 0 1
    #particle minecraft:bubble_pop ^ ^ ^0.25 0.1 0.1 0.1 0 1
