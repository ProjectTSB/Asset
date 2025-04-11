#> asset:effect/0150.resistance/modifier/remove
#
#
#
# @within function
#   asset:effect/0150.resistance/end/
#   asset:effect/0150.resistance/re-given/
#   asset:effect/0150.resistance/remove/

# 削除
    data modify storage api: Argument.UUID set value [I;1,3,150,0]
    function api:modifier/defense/base/remove
