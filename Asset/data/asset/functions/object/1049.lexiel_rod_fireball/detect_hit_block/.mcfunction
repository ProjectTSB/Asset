#> asset:object/1049.lexiel_rod_fireball/detect_hit_block/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/1049/detect_hit_block

# 判定
    execute unless block ~ ~ ~ #lib:no_collision/ run data modify storage asset:context IsHitBlock set value true
