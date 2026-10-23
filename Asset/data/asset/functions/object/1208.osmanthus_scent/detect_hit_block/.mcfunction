#> asset:object/1208.osmanthus_scent/detect_hit_block/
#
# 進行方向のブロックとの接触を判定する
#
# @within asset:object/alias/1208/detect_hit_block

# 判定
    execute unless block ^ ^ ^0.5 #lib:no_collision/ run data modify storage asset:context IsHitBlock set value true
