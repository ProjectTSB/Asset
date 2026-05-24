#> asset:effect/0358.time_ticker_night/modifier/remove
#
#
#
# @within function
#   asset:effect/0358.time_ticker_night/end/
#   asset:effect/0358.time_ticker_night/remove/
#   asset:effect/0358.time_ticker_night/tick/

# 魔法耐性
    data modify storage api: Argument.UUID set from storage asset:context this.UUID
    function api:modifier/defense/magic/remove

# MP回復量
    data modify storage api: Argument.UUID set from storage asset:context this.UUID
    function api:modifier/mp_heal/remove
