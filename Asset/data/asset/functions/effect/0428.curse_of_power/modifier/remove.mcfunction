#> asset:effect/0428.curse_of_power/modifier/remove
#
#
#
# @within function asset:effect/0428.curse_of_power/**

## modifier削除
# 耐性
    data modify storage api: Argument.UUID set value [I;1,3,428,0]
    function api:modifier/defense/base/remove

# MP回復量
    data modify storage api: Argument.UUID set value [I;1,3,428,0]
    function api:modifier/mp_heal/remove
