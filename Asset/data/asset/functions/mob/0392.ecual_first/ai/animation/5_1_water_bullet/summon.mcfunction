#> asset:mob/0392.ecual_first/ai/animation/5_1_water_bullet/summon
#
# 弾召喚
#
# @within function asset:mob/0392.ecual_first/ai/animation/5_1_water_bullet/

execute positioned ^ ^1.25 ^1.25 rotated ~-20 0 run function asset:mob/0392.ecual_first/ai/projectile/water_bullet/0.summon
execute positioned ^ ^1.25 ^1.25 rotated ~20 0 run function asset:mob/0392.ecual_first/ai/projectile/water_bullet/0.summon
execute if predicate api:global_vars/difficulty/min/3_blessless positioned ^ ^1.25 ^1.25 rotated ~-15 0 run function asset:mob/0392.ecual_first/ai/projectile/water_bullet/0.summon
execute if predicate api:global_vars/difficulty/min/3_blessless positioned ^ ^1.25 ^1.25 rotated ~15 0 run function asset:mob/0392.ecual_first/ai/projectile/water_bullet/0.summon
execute if predicate api:global_vars/difficulty/min/3_blessless positioned ^ ^1.25 ^1.25 rotated ~-25 0 run function asset:mob/0392.ecual_first/ai/projectile/water_bullet/0.summon
execute if predicate api:global_vars/difficulty/min/3_blessless positioned ^ ^1.25 ^1.25 rotated ~25 0 run function asset:mob/0392.ecual_first/ai/projectile/water_bullet/0.summon
