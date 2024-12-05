#> asset:object/2081.shower_of_cherry_blossoms/detect_hit_entity/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/2081/detect_hit_entity

# HitCheckがあるときのみ判定
# 範囲内のプレイヤーにTagを付与しておく
    execute if entity @s[tag=2081.HitCheck] run tag @a[tag=!PlayerShouldInvulnerable,distance=..1] add 2081.Target
    execute if entity @s[tag=2081.HitCheck] positioned ~ ~1.5 ~ run tag @a[tag=!PlayerShouldInvulnerable,distance=..2] add 2081.Target
    execute if entity @s[tag=2081.HitCheck] positioned ~ ~5 ~ run tag @a[tag=!PlayerShouldInvulnerable,distance=..3] add 2081.Target

# ターゲットのプレイヤーがいればIsHitEntityをtrueに
    execute if entity @p[tag=2081.Target,distance=..10] run data modify storage asset:context IsHitEntity set value true
