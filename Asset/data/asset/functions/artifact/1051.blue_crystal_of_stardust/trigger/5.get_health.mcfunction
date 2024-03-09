#> asset:artifact/1051.blue_crystal_of_stardust/trigger/5.get_health
#
# 実行者の現在体力をスコアへ返す
#
# @within function asset:artifact/1051.blue_crystal_of_stardust/trigger/4.find_lowest_health_player

# 現在体力を取得
    function api:data_get/health

# 返り値として返す
    return run data get storage api: Health