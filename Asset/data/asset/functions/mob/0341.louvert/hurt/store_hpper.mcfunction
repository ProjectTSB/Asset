#> asset:mob/0341.louvert/hurt/store_hpper
#
# HP割合を保存する
#
# @within function asset:mob/0341.louvert/hurt/

# 体力割合を検知する
    function api:mob/get_health_percent
# 代入する
    execute store result score @s 9H.HPPer run data get storage api: Return.HealthPer 100

# ハード：体力10%以下の場合、ラストスペルに移行
    execute if predicate api:global_vars/difficulty/min/3_blessless if entity @s[tag=!9H.DoLastSpell] if score @s 9H.HPPer matches ..10 run function asset:mob/0341.louvert/hurt/last_spell_start
