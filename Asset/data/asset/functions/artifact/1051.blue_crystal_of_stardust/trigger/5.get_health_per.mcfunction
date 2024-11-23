#> asset:artifact/1051.blue_crystal_of_stardust/trigger/5.get_health_per
#
# 実行者の現在体力割合をスコアへ返す
#
# @within function asset:artifact/1051.blue_crystal_of_stardust/trigger/4.find_lowest_health_per_player

# 体力割合の1000倍を取得
    function api:entity/player/get_health_per

# 現在体力割合を返す
    return run data get storage api: Return.MaxHealth 1000
