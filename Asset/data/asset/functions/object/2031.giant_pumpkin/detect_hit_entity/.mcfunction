#> asset:object/2031.giant_pumpkin/detect_hit_entity/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/2031/detect_hit_entity

# 判定
    execute positioned ~-0.5 ~0.0 ~-0.5 if entity @p[tag=!PlayerShouldInvulnerable,dx=0] run data modify storage asset:context IsHitEntity set value true

# 実装フラグを立てる
    data modify storage asset:object Implement set value true
