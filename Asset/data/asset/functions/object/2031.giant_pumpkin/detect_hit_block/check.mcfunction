#> asset:object/2031.giant_pumpkin/detect_hit_block/check
#
# ブロックとの接触判定
#
# @within function asset:object/2031.giant_pumpkin/detect_hit_block/

# 前方の縦3*横3をチェック
    execute positioned ^ ^ ^1 unless block ~ ~ ~ #lib:no_collision/ run data modify storage asset:context IsHitBlock set value true
    execute positioned ^1 ^ ^1 unless block ~ ~ ~ #lib:no_collision/ run data modify storage asset:context IsHitBlock set value true
    execute positioned ^-1 ^ ^1 unless block ~ ~ ~ #lib:no_collision/ run data modify storage asset:context IsHitBlock set value true
    execute positioned ^ ^1 ^1 unless block ~ ~ ~ #lib:no_collision/ run data modify storage asset:context IsHitBlock set value true
    execute positioned ^1 ^1 ^1 unless block ~ ~ ~ #lib:no_collision/ run data modify storage asset:context IsHitBlock set value true
    execute positioned ^-1 ^1 ^1 unless block ~ ~ ~ #lib:no_collision/ run data modify storage asset:context IsHitBlock set value true
    execute positioned ^ ^-1 ^1 unless block ~ ~ ~ #lib:no_collision/ run data modify storage asset:context IsHitBlock set value true
    execute positioned ^1 ^-1 ^1 unless block ~ ~ ~ #lib:no_collision/ run data modify storage asset:context IsHitBlock set value true
    execute positioned ^-1 ^-1 ^1 unless block ~ ~ ~ #lib:no_collision/ run data modify storage asset:context IsHitBlock set value true
