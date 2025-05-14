#> asset:mob/0380.haruclaire_v3/hurt/check_health
#
# Mobのダメージ時の処理
#
# @within function asset:mob/0380.haruclaire_v3/hurt/

# 体力割合取得
    function api:mob/get_health_percent
    execute store result score $HealthPer Temporary run data get storage api: Return.HealthPer 100

# 難易度に応じて後半戦に遷移
    execute if predicate api:global_vars/difficulty/max/normal if score $HealthPer Temporary matches ..60 run function asset:mob/0380.haruclaire_v3/hurt/latter_start
    execute if predicate api:global_vars/difficulty/min/3_blessless if score $HealthPer Temporary matches ..70 run function asset:mob/0380.haruclaire_v3/hurt/latter_start

# 終了
    scoreboard players reset $HealthPer Temporary
