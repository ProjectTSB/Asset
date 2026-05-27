#> asset:object/1142.raging_passion_pickaxe/detect_hit_block/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/1142/detect_hit_block

# 判定
    execute unless block ^ ^ ^0.5 #lib:no_collision run data modify storage asset:context IsHitBlock set value true
