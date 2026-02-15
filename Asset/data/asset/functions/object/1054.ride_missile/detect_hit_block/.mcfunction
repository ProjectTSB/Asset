#> asset:object/1054.ride_missile/detect_hit_block/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/1054/detect_hit_block

execute unless block ^ ^ ^0.5 #lib:no_collision/ run data modify storage asset:context IsHitBlock set value true
execute unless block ^ ^ ^1.0 #lib:no_collision/ run data modify storage asset:context IsHitBlock set value true
