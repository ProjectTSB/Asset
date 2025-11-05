#> asset:artifact/1324.oracle/trigger/get_health
#
#
#
# @within function
#   asset:artifact/1324.oracle/trigger/damage
#   asset:artifact/1324.oracle/trigger/find_target

# 現在体力を取得
    function api:data_get/health

# 現在体力の10倍を返り値として返す
    return run data get storage api: Health 10
