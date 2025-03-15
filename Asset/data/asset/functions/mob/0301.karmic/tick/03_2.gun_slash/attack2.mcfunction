#> asset:mob/0301.karmic/tick/03_2.gun_slash/attack2
#
#
#
# @within function asset:mob/0301.karmic/tick/03_2.gun_slash/main


execute rotated ~ 0 positioned ^ ^ ^2 run function asset:mob/0301.karmic/tick/common/slash
execute rotated ~ 0 positioned ^ ^ ^3 run function asset:mob/0301.karmic/tick/common/thunder
execute if predicate api:global_vars/difficulty/min/normal rotated ~60 0 positioned ^ ^ ^3 run function asset:mob/0301.karmic/tick/common/thunder
execute if predicate api:global_vars/difficulty/min/normal rotated ~120 0 positioned ^ ^ ^3 run function asset:mob/0301.karmic/tick/common/thunder
execute if predicate api:global_vars/difficulty/min/normal rotated ~180 0 positioned ^ ^ ^3 run function asset:mob/0301.karmic/tick/common/thunder
execute if predicate api:global_vars/difficulty/min/normal rotated ~240 0 positioned ^ ^ ^3 run function asset:mob/0301.karmic/tick/common/thunder
execute if predicate api:global_vars/difficulty/min/normal rotated ~300 0 positioned ^ ^ ^3 run function asset:mob/0301.karmic/tick/common/thunder
