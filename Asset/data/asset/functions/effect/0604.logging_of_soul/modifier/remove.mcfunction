#> asset:effect/0604.logging_of_soul/modifier/remove
#
# 補正を削除する
#
# @within function
#   asset:effect/0604.logging_of_soul/end/
#   asset:effect/0604.logging_of_soul/re-given/
#   asset:effect/0604.logging_of_soul/remove/

# 最大体力
    data modify storage api: Argument.UUID set value [I;1,3,604,0]
    function api:modifier/max_health/remove
