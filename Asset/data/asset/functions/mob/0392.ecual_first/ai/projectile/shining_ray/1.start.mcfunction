#> asset:mob/0392.ecual_first/ai/projectile/shining_ray/1.start
#
# 斬撃砲発射
#
# @within function asset:mob/0392.ecual_first/**

# VFX
    function asset:mob/0392.ecual_first/ai/projectile/shining_ray/2.vfx

# ダメージ判定
    function asset:mob/0392.ecual_first/ai/projectile/shining_ray/3.damage

# サウンド
    playsound entity.warden.sonic_boom hostile @a[distance=..32] ~ ~ ~ 1 1.5 0
    playsound block.end_portal.spawn hostile @a[distance=..32] ~ ~ ~ 0.25 2 0.0
    playsound block.respawn_anchor.deplete hostile @a[distance=..32] ~ ~ ~ 2 2 0.0
    playsound block.respawn_anchor.deplete hostile @a[distance=..32] ~ ~ ~ 2 1.95 0.0
    playsound ogg:block.amethyst.step6 hostile @a[distance=..32] ~ ~ ~ 2 2 0
    playsound ogg:block.amethyst.step6 hostile @a[distance=..32] ~ ~ ~ 2 1.975 0
    playsound ogg:block.amethyst.step6 hostile @a[distance=..32] ~ ~ ~ 2 1.95 0
    playsound ogg:block.amethyst.step6 hostile @a[distance=..32] ~ ~ ~ 2 1.925 0
