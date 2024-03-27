#> asset:artifact/1051.blue_crystal_of_stardust/trigger/5.get_health_per
#
# 実行者の現在体力割合をスコアへ返す
#
# @within function asset:artifact/1051.blue_crystal_of_stardust/trigger/4.find_lowest_health_per_player

#> Private
# @private
    #declare score_holder $MaxHealth
    #declare score_holder $CurrentHealth

# 最大体力と現在体力の1000倍を取得
    execute store result score $MaxHealth Temporary run attribute @s generic.max_health get 1
    function api:data_get/health
    execute store result score $CurrentHealth Temporary run data get storage api: Health 1000

# 現在体力割合を返す
    return run scoreboard players operation $CurrentHealth Temporary /= $MaxHealth Temporary

# リセット
    scoreboard players reset $MaxHealth Temporary
    scoreboard players reset $CurrentHealth