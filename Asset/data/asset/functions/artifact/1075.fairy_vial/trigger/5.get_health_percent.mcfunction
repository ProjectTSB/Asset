#> asset:artifact/1075.fairy_vial/trigger/5.get_health_percent
#
# 実行者の現在体力割合を算出して返す
#
# @within function asset:artifact/1075.fairy_vial/trigger/4.find_lowest_health_percent_player

#> Private
# @private
    #declare score_holder $MaxHealth
    #declare score_holder $CurrentHealth

# 最大体力と現在体力の100倍を取得
    execute store result score $MaxHealth Temporary run attribute @s generic.max_health get 1
    function api:data_get/health
    execute store result score $CurrentHealth Temporary run data get storage api: health 100

# 現在体力割合を算出
    return run scoreboard players operation $CurrentHealth Temporary /= $MaxHealth Temporary

# リセット
    scoreboard players reset $MaxHealth Temporary
    scoreboard players reset $CurrentHealth