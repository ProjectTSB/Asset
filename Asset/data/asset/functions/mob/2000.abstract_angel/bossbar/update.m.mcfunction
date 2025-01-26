#> asset:mob/2000.abstract_angel/bossbar/update.m
#
#
#
# @input args
#   UUID: int
# @within function asset:mob/2000.abstract_angel/update_bossbar/

# 数値設定
    function api:mob/get_health
    $execute store result bossbar asset:angel$(UUID) value run data get storage api: Return.Health 100
