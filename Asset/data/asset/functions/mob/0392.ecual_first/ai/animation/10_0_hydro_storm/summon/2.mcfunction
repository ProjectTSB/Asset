#> asset:mob/0392.ecual_first/ai/animation/10_0_hydro_storm/summon/2
#
# プレイヤー 追従型
#
# @within function
#   asset:mob/0392.ecual_first/ai/animation/10_0_hydro_storm/
#   asset:mob/0392.ecual_first/ai/animation/100_0_opening/

# マーカーを呼ぶ
    tp 0-0-0-0-0 ^ ^ ^ ~ 0
    
# ランダムな方向を向かせる
    execute store result entity 0-0-0-0-0 Rotation[0] float 0.01 run random value 0..36000

# 0-0-0-0-0 の方向の先に召喚する
    execute at 0-0-0-0-0 positioned ^ ^1.5 ^30 facing entity @a[tag=!PlayerShouldInvulnerable,distance=..100,sort=random,limit=1] eyes rotated ~ 0 run function asset:mob/0392.ecual_first/ai/projectile/hydro/0.summon

# マーカーを戻してあげる
    execute in overworld run tp 0-0-0-0-0 0.0 0.0 0.0
