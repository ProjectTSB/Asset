#> asset:object/1165.bubble_spreader/detect_hit_block/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/1165/detect_hit_block

# 判定(片方は反射用)
    execute unless block ^ ^ ^0.5 #lib:no_collision/ run data modify storage asset:context IsHitBlock set value true
    execute if score @s General.Object.Tick matches ..15 unless block ^ ^ ^1.0 #lib:no_collision/ run data modify storage asset:context IsHitBlock set value true
