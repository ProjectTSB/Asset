#> asset:effect/0309.healer_trance/modifier/add
#
#
#
# @within function asset:effect/0309.healer_trance/*/

# 与回復量
    data modify storage api: Argument.UUID set value [I;1,3,309,0]
    data modify storage api: Argument.Amount set value -0.5
    data modify storage api: Argument.Operation set value "multiply"
    function api:modifier/heal/add

# 被回復量
    data modify storage api: Argument.UUID set value [I;1,3,309,0]
    data modify storage api: Argument.Amount set value -0.5
    data modify storage api: Argument.Operation set value "multiply"
    function api:modifier/receive_heal/add
