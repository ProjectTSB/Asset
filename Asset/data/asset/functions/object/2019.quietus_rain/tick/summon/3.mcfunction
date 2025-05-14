#> asset:object/2019.quietus_rain/tick/summon/3
#
# 魔法陣召喚3段目
#
# @within function asset:object/2019.quietus_rain/tick/

# 召喚
    execute positioned ^ ^ ^22.5 run function asset:object/2019.quietus_rain/tick/summon/0
    execute if predicate api:global_vars/difficulty/max/normal rotated ~120 ~ positioned ^ ^ ^22.5 run function asset:object/2019.quietus_rain/tick/summon/0
    execute if predicate api:global_vars/difficulty/max/normal rotated ~240 ~ positioned ^ ^ ^22.5 run function asset:object/2019.quietus_rain/tick/summon/0
    execute if predicate api:global_vars/difficulty/min/3_blessless rotated ~90 ~ positioned ^ ^ ^22.5 run function asset:object/2019.quietus_rain/tick/summon/0
    execute if predicate api:global_vars/difficulty/min/3_blessless rotated ~180 ~ positioned ^ ^ ^22.5 run function asset:object/2019.quietus_rain/tick/summon/0
    execute if predicate api:global_vars/difficulty/min/3_blessless rotated ~270 ~ positioned ^ ^ ^22.5 run function asset:object/2019.quietus_rain/tick/summon/0
