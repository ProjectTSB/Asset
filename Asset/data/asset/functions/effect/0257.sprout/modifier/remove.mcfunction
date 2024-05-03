#> asset:effect/0257.sprout/modifier/remove
#
# 補正を削除する
#
# @within function
#   asset:effect/0257.sprout/end/
#   asset:effect/0257.sprout/remove/

# MP回復量+12%
    data modify storage api: Argument.UUID set value [I;1,3,257,0]
    function api:modifier/mp_regen/remove
