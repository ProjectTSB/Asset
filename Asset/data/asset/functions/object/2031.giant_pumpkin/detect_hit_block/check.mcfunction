#> asset:object/2031.giant_pumpkin/detect_hit_block/check
#
#
#
# @within function asset:object/2031.giant_pumpkin/detect_hit_block/

# 前方の縦3*横3をチェック
    execute unless block ^ ^ ^1 #lib:no_collision run data modify storage asset:context IsHitBlock set value true
    execute unless block ^1 ^ ^1 #lib:no_collision run data modify storage asset:context IsHitBlock set value true
    execute unless block ^-1 ^ ^1 #lib:no_collision run data modify storage asset:context IsHitBlock set value true
    execute unless block ^ ^1 ^1 #lib:no_collision run data modify storage asset:context IsHitBlock set value true
    execute unless block ^1 ^1 ^1 #lib:no_collision run data modify storage asset:context IsHitBlock set value true
    execute unless block ^-1 ^1 ^1 #lib:no_collision run data modify storage asset:context IsHitBlock set value true
    execute unless block ^ ^2 ^1 #lib:no_collision run data modify storage asset:context IsHitBlock set value true
    execute unless block ^1 ^2 ^1 #lib:no_collision run data modify storage asset:context IsHitBlock set value true
    execute unless block ^-1 ^2 ^1 #lib:no_collision run data modify storage asset:context IsHitBlock set value true
