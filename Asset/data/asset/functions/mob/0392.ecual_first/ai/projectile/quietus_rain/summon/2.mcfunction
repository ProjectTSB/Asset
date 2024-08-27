#> asset:mob/0392.ecual_first/ai/projectile/quietus_rain/summon/2
#
# 召喚 2段目
#
# @within function asset:mob/0392.ecual_first/ai/projectile/quietus_rain/2.tick

execute positioned ^ ^ ^15 run function asset:mob/0392.ecual_first/ai/projectile/quietus_rain/rotated_water_magic/0.summon
execute if predicate api:global_vars/difficulty/max/normal rotated ~120 ~ positioned ^ ^ ^15 run function asset:mob/0392.ecual_first/ai/projectile/quietus_rain/rotated_water_magic/0.summon
execute if predicate api:global_vars/difficulty/max/normal rotated ~240 ~ positioned ^ ^ ^15 run function asset:mob/0392.ecual_first/ai/projectile/quietus_rain/rotated_water_magic/0.summon
execute if predicate api:global_vars/difficulty/min/hard rotated ~90 ~ positioned ^ ^ ^15 run function asset:mob/0392.ecual_first/ai/projectile/quietus_rain/rotated_water_magic/0.summon
execute if predicate api:global_vars/difficulty/min/hard rotated ~180 ~ positioned ^ ^ ^15 run function asset:mob/0392.ecual_first/ai/projectile/quietus_rain/rotated_water_magic/0.summon
execute if predicate api:global_vars/difficulty/min/hard rotated ~270 ~ positioned ^ ^ ^15 run function asset:mob/0392.ecual_first/ai/projectile/quietus_rain/rotated_water_magic/0.summon
