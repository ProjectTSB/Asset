#> asset:mob/0391.axia_first/ai/projectile/zangekihou/1.start
#
# 斬撃砲発射
#
# @within function asset:mob/0391.axia_first/**

# 斬撃ソニックブーム
    execute positioned ^ ^ ^3 run function asset:mob/0391.axia_first/ai/projectile/zangekihou/2.effect_init
    execute positioned ^ ^ ^6 run function asset:mob/0391.axia_first/ai/projectile/zangekihou/2.effect_init
    execute positioned ^ ^ ^9 run function asset:mob/0391.axia_first/ai/projectile/zangekihou/2.effect_init
    execute positioned ^ ^ ^12 run function asset:mob/0391.axia_first/ai/projectile/zangekihou/2.effect_init
    execute positioned ^ ^ ^15 run function asset:mob/0391.axia_first/ai/projectile/zangekihou/2.effect_init
    execute positioned ^ ^ ^18 run function asset:mob/0391.axia_first/ai/projectile/zangekihou/2.effect_init
    execute positioned ^ ^ ^21 run function asset:mob/0391.axia_first/ai/projectile/zangekihou/2.effect_init
    execute positioned ^ ^ ^24 run function asset:mob/0391.axia_first/ai/projectile/zangekihou/2.effect_init

# VFX
    function asset:mob/0391.axia_first/ai/projectile/zangekihou/3.vfx

# ダメージ判定
    function asset:mob/0391.axia_first/ai/projectile/zangekihou/4.damage

# サウンド
    playsound entity.warden.sonic_boom hostile @a[distance=..32] ~ ~ ~ 2 1.5 0
    playsound block.end_portal.spawn hostile @a[distance=..32] ~ ~ ~ 0.25 2 0.0
    playsound block.respawn_anchor.deplete hostile @a[distance=..32] ~ ~ ~ 2 2 0.0
    playsound block.respawn_anchor.deplete hostile @a[distance=..32] ~ ~ ~ 2 1.95 0.0
    playsound entity.breeze.shoot hostile @a[distance=..32] ~ ~ ~ 2 0.7 0.0
    playsound entity.breeze.shoot hostile @a[distance=..32] ~ ~ ~ 2 0.69 0.0
    playsound entity.breeze.shoot hostile @a[distance=..32] ~ ~ ~ 2 0.68 0.0
