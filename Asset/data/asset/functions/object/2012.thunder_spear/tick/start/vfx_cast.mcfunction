#> asset:object/2012.thunder_spear/tick/start/vfx_cast
#
# 爆発演出
#
# @within function asset:object/2012.thunder_spear/tick/start/cast

# 追加パーティクル
    particle dust 1 1 0.3 2 ~ ~ ~ 5 5 5 0 500 force @a[distance=..32]
# 音
    playsound entity.generic.explode hostile @a[distance=..32] ~ ~ ~ 1 1.5
    playsound item.trident.thunder hostile @a[distance=..32] ~ ~ ~ 1 1.9
    playsound item.trident.thunder hostile @a[distance=..32] ~ ~ ~ 1 2
