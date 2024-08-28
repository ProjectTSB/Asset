#> asset:mob/0392.ecual_first/ai/projectile/quietus_rain/summon/1
#
# 召喚 1段目
#
# @within function asset:mob/0392.ecual_first/ai/projectile/quietus_rain/2.tick

function asset:mob/0392.ecual_first/ai/projectile/quietus_rain/rotated_water_magic/0.summon
execute positioned ^ ^ ^7.5 run function asset:mob/0392.ecual_first/ai/projectile/quietus_rain/rotated_water_magic/0.summon
execute if predicate api:global_vars/difficulty/max/normal rotated ~120 ~ positioned ^ ^ ^7.5 run function asset:mob/0392.ecual_first/ai/projectile/quietus_rain/rotated_water_magic/0.summon
execute if predicate api:global_vars/difficulty/max/normal rotated ~240 ~ positioned ^ ^ ^7.5 run function asset:mob/0392.ecual_first/ai/projectile/quietus_rain/rotated_water_magic/0.summon
execute if predicate api:global_vars/difficulty/min/hard rotated ~90 ~ positioned ^ ^ ^7.5 run function asset:mob/0392.ecual_first/ai/projectile/quietus_rain/rotated_water_magic/0.summon
execute if predicate api:global_vars/difficulty/min/hard rotated ~180 ~ positioned ^ ^ ^7.5 run function asset:mob/0392.ecual_first/ai/projectile/quietus_rain/rotated_water_magic/0.summon
execute if predicate api:global_vars/difficulty/min/hard rotated ~270 ~ positioned ^ ^ ^7.5 run function asset:mob/0392.ecual_first/ai/projectile/quietus_rain/rotated_water_magic/0.summon
