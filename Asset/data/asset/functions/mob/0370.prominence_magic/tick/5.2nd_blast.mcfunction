#> asset:mob/0370.prominence_magic/tick/5.2nd_blast
#
#
#
# @within function asset:mob/0370.prominence_magic/tick/3.on_ground

# 2箇所で爆発
    execute rotated ~0 ~ positioned ^ ^ ^2.4 run function asset:mob/0370.prominence_magic/tick/damage
    execute rotated ~180 ~ positioned ^ ^ ^2.4 run function asset:mob/0370.prominence_magic/tick/damage

# ハード以上で追加で2箇所
    execute if predicate api:global_vars/difficulty/min/hard rotated ~90 ~ positioned ^ ^ ^2.4 run function asset:mob/0370.prominence_magic/tick/damage
    execute if predicate api:global_vars/difficulty/min/hard rotated ~270 ~ positioned ^ ^ ^2.4 run function asset:mob/0370.prominence_magic/tick/damage
