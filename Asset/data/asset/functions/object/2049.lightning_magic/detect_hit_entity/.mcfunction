#> asset:object/2049.lightning_magic/detect_hit_entity/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/2049/detect_hit_entity

# 地面に着いた後、かつIntervalTagのある時のみ判定
    execute if entity @s[tag=2049.OnGround,tag=2049.Interval] if entity @p[tag=!PlayerShouldInvulnerable,distance=..3.2] run data modify storage asset:context IsHitEntity set value true
