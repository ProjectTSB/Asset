#> asset:object/2048.wave_magic/detect_hit_entity/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/2048/detect_hit_entity

# 着陸後でのみヒット判定
    execute if entity @s[tag=2048.OnGround] if entity @p[distance=..1.5] run data modify storage asset:context IsHitEntity set value true

# 実装フラグを立てる
    data modify storage asset:object Implement set value true
