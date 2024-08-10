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
