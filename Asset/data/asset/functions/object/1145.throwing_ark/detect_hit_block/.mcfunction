#> asset:object/1145.throwing_ark/detect_hit_block/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/1145/detect_hit_block

# 壁へのヒット判定
    execute unless block ^ ^ ^0.5 #lib:no_collision/ run data modify storage asset:context IsHitBlock set value true
