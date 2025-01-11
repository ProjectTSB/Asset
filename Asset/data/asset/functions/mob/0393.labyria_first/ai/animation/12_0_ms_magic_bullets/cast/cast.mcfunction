#> asset:mob/0393.labyria_first/ai/animation/12_0_ms_magic_bullets/cast/cast
#
# 斬撃砲発射
#
# @within function asset:mob/0393.labyria_first/ai/animation/12_0_ms_magic_bullets/

# VFX
    function asset:mob/0393.labyria_first/ai/animation/12_0_ms_magic_bullets/cast/vfx

# ダメージ判定
    function asset:mob/0393.labyria_first/ai/animation/12_0_ms_magic_bullets/cast/damage

# サウンド再生
    playsound tsb_sounds:blaster1 hostile @a[distance=..32] ~ ~ ~ 1 1
    playsound entity.breeze.shoot hostile @a[distance=..32] ~ ~ ~ 1 1.25
    playsound entity.breeze.shoot hostile @a[distance=..32] ~ ~ ~ 1 1.3
    playsound entity.warden.sonic_boom hostile @a[distance=..32] ~ ~ ~ 1 2
    playsound entity.warden.sonic_boom hostile @a[distance=..32] ~ ~ ~ 1 1.9
    playsound block.end_portal.spawn hostile @a[distance=..32] ~ ~ ~ 0.25 2 0.0
    playsound block.respawn_anchor.deplete hostile @a[distance=..32] ~ ~ ~ 1 2 0.0
    playsound block.respawn_anchor.deplete hostile @a[distance=..32] ~ ~ ~ 1 1.95 0.0
