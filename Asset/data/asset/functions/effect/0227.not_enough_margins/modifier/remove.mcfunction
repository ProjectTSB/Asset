#> asset:effect/0227.not_enough_margins/modifier/remove
#
# 補正を削除する
#
# @within function
#   asset:effect/0227.not_enough_margins/end/
#   asset:effect/0227.not_enough_margins/re-given/
#   asset:effect/0227.not_enough_margins/remove/

# 補正を削除する
    data modify storage api: Argument.UUID set value [I;1,3,227,0]
    function api:modifier/attack/base/remove

    data modify storage api: Argument.UUID set value [I;1,3,227,0]
    function api:modifier/defense/base/remove