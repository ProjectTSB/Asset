#> asset:artifact/0468.raging_demon/tick/get_health
#
# 体力を取得する
#
# @within function asset:artifact/0468.raging_demon/tick/check_target

# 現在体力を取得し、返り値として返す
    function api:mob/get_health
    return run data get storage api: Return.Health
