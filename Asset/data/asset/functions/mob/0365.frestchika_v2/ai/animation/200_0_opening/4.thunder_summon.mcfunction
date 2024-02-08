#> asset:mob/0365.frestchika_v2/ai/animation/200_0_opening/4.thunder_summon
#
# ゼクスサンダー召喚
#
# @within function asset:mob/0365.frestchika_v2/ai/animation/200_0_opening/

# 六角形の頂点に召喚
    execute positioned ~5 ~ ~ run function asset:mob/0365.frestchika_v2/ai/projectile/thunder/1.summon
    execute positioned ~-5 ~ ~ run function asset:mob/0365.frestchika_v2/ai/projectile/thunder/1.summon
    execute positioned ~2.5 ~ ~4.33 run function asset:mob/0365.frestchika_v2/ai/projectile/thunder/1.summon
    execute positioned ~2.5 ~ ~-4.33 run function asset:mob/0365.frestchika_v2/ai/projectile/thunder/1.summon
    execute positioned ~-2.5 ~ ~4.33 run function asset:mob/0365.frestchika_v2/ai/projectile/thunder/1.summon
    execute positioned ~-2.5 ~ ~-4.33 run function asset:mob/0365.frestchika_v2/ai/projectile/thunder/1.summon

# ハードは更に召喚
    execute if predicate api:global_vars/difficulty/min/hard run function asset:mob/0365.frestchika_v2/ai/animation/200_0_opening/5.thunder_summon_hard