#> asset:mob/0370.prominence_magic/tick/4.2nd_blast_ready
#
# 2回目の爆発の予備動作
#
# @within function asset:mob/0370.prominence_magic/tick/3.on_ground

# 演出
    execute rotated ~0 ~ positioned ^ ^ ^2.4 run function asset:mob/0370.prominence_magic/tick/vfx
    execute rotated ~180 ~ positioned ^ ^ ^2.4 run function asset:mob/0370.prominence_magic/tick/vfx

# ハード以上で追加で2つ
    execute if predicate api:global_vars/difficulty/min/hard rotated ~90 ~ positioned ^ ^ ^2.4 run function asset:mob/0370.prominence_magic/tick/vfx
    execute if predicate api:global_vars/difficulty/min/hard rotated ~270 ~ positioned ^ ^ ^2.4 run function asset:mob/0370.prominence_magic/tick/vfx
