#> asset:object/2101.lexiel_fireball/detect_hit_block/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/2101/detect_hit_block

# 判定
    execute unless block ~ ~ ~ #lib:no_collision run data modify storage asset:context IsHitBlock set value true
