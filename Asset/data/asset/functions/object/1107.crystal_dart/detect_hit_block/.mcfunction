#> asset:object/1107.crystal_dart/detect_hit_block/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/1107/detect_hit_block

# 判定
    execute unless block ^ ^ ^0.5 #lib:no_collision run data modify storage asset:context IsHitBlock set value true
    execute unless block ^ ^ ^1.0 #lib:no_collision run data modify storage asset:context IsHitBlock set value true
