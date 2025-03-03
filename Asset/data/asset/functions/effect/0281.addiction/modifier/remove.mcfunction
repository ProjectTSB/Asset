#> asset:effect/0281.addiction/modifier/remove
#
#
#
# @within function
#   asset:effect/0281.addiction/end/
#   asset:effect/0281.addiction/remove/

# 攻撃
    data modify storage api: Argument.UUID set value [I;1,3,281,0]
    function api:modifier/attack/base/remove

# 耐性
    data modify storage api: Argument.UUID set value [I;1,3,281,0]
    function api:modifier/defense/base/remove
