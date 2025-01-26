#> asset:object/2083.brimstone/detect_hit_entity/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/2083/detect_hit_entity

# 判定
    execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @p[tag=!PlayerShouldInvulnerable,dx=0] run data modify storage asset:context IsHitEntity set value true
