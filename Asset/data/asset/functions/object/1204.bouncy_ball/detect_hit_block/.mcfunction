#> asset:object/1204.bouncy_ball/detect_hit_block/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/1204/detect_hit_block

# 判定
    execute unless block ^ ^ ^0.4 #lib:no_collision/ run data modify storage asset:context IsHitBlock set value true
    execute unless block ^ ^ ^0.8 #lib:no_collision/ run data modify storage asset:context IsHitBlock set value true
