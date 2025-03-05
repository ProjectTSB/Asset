#> asset:effect/0309.healer_trance/modifier/remove
#
#
#
# @within function asset:effect/0309.healer_trance/*/

# 与回復量
    data modify storage api: Argument.UUID set value [I;1,3,309,0]
    function api:modifier/heal/remove

# 被回復量
    data modify storage api: Argument.UUID set value [I;1,3,309,0]
    function api:modifier/receive_heal/remove
