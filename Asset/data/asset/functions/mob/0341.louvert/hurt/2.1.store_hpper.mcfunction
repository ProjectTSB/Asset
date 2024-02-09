#> asset:mob/0341.louvert/hurt/2.1.store_hpper
#
# HP割合を求めるFunction
#
# @within function asset:mob/0341.louvert/hurt/2.hurt

# 体力が半分以下かどうかを検知する
    function api:mob/get_health_percent
# 代入する
    execute store result score @s 9H.HPPer run data get storage api: Return.HealthPer 100

# ハード：体力10%以下の場合後半戦に移行
    execute if predicate api:global_vars/difficulty/min/hard if score @s 9H.HPPer matches ..10 run function asset:mob/0341.louvert/hurt/2.2.last_spell_start