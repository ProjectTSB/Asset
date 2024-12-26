#> asset:effect/0265.light_of_firefly/modifier/remove
#
# 補正を削除する
#
# @within function
#   asset:effect/0265.light_of_firefly/end/
#   asset:effect/0265.light_of_firefly/remove/

# MP回復量
    data modify storage api: Argument.UUID set value [I;1,3,265,0]
    function api:modifier/mp_regen/remove
