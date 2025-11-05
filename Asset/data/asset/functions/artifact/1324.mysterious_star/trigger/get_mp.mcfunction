#> asset:artifact/1324.mysterious_star/trigger/get_mp
#
#
#
# @within function asset:artifact/1324.mysterious_star/trigger/find_target

# 現在体力を取得
    function api:mp/get_current

# 現在体力の10倍を返り値として返す
    return run data get storage api: Health 10
