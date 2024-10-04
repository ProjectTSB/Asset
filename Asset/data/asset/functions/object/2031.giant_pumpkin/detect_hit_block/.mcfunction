#> asset:object/2031.giant_pumpkin/detect_hit_block/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/2031/detect_hit_block

# 判定
    execute unless block ^ ^ ^1 #lib:no_collision run data modify storage asset:context IsHitBlock set value true
    execute unless block ^ ^ ^1 #lib:no_collision run data modify storage asset:context IsHitBlock set value true

# 実装フラグを立てる
    data modify storage asset:object Implement set value true
