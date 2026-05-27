#> asset:object/1042.mini_black_hole_flying/detect_hit_block/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/1042/detect_hit_block

# 判定
    execute unless block ^ ^ ^0.375 #lib:no_collision run data modify storage asset:context IsHitBlock set value true
