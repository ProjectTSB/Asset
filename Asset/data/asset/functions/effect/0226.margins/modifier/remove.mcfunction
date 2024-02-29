#> asset:effect/0226.margins/modifier/remove
#
# 補正を削除
#
# @within function
#   asset:effect/0226.margins/end/
#   asset:effect/0226.margins/re-given/
#   asset:effect/0226.margins/remove/

# 補正を削除する
    data modify storage api: Argument.UUID set value [I;1,3,226,0]
    function api:modifier/attack/base/remove

    data modify storage api: Argument.UUID set value [I;1,3,226,0]
    function api:modifier/defense/base/remove