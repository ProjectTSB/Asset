#> asset:mob/0392.ecual_first/ai/projectile/water_wall/vfx/cast
#
# 爆発演出
#
# @within function asset:mob/0392.ecual_first/ai/projectile/water_wall/3.cast

# 追加パーティクル
    particle dust 0.32 0.85 1 1.5 ~ ~5 ~ 1 2.5 1 0 50 force @a[distance=..32]
# 音
    playsound entity.generic.explode hostile @a[distance=..32] ~ ~ ~ 0.6 1.5
    playsound entity.player.swim hostile @a[distance=..16] ~ ~ ~ 0.6 1 0
    playsound item.trident.thunder hostile @a[distance=..32] ~ ~ ~ 0.35 2
