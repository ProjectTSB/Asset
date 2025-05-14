#> asset:object/2019.quietus_rain/tick/summon/2
#
# 魔法陣召喚2段目
#
# @within function asset:object/2019.quietus_rain/tick/

# 召喚
    execute positioned ^ ^ ^15 run function asset:object/2019.quietus_rain/tick/summon/0
    execute if predicate api:global_vars/difficulty/max/2_hard rotated ~120 ~ positioned ^ ^ ^15 run function asset:object/2019.quietus_rain/tick/summon/0
    execute if predicate api:global_vars/difficulty/max/2_hard rotated ~240 ~ positioned ^ ^ ^15 run function asset:object/2019.quietus_rain/tick/summon/0
    execute if predicate api:global_vars/difficulty/min/3_blessless rotated ~90 ~ positioned ^ ^ ^15 run function asset:object/2019.quietus_rain/tick/summon/0
    execute if predicate api:global_vars/difficulty/min/3_blessless rotated ~180 ~ positioned ^ ^ ^15 run function asset:object/2019.quietus_rain/tick/summon/0
    execute if predicate api:global_vars/difficulty/min/3_blessless rotated ~270 ~ positioned ^ ^ ^15 run function asset:object/2019.quietus_rain/tick/summon/0
