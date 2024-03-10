#> asset:artifact/1075.fairy_vial/trigger/5.get_health
#
# 実行者の現在体力を返す
#
# @within function asset:artifact/1075.fairy_vial/trigger/4.find_lowest_health_player

# 現在体力を取得
    function api:data_get/health

# 現在体力の10倍を返り値として返す
    return run data get storage api: Health 10