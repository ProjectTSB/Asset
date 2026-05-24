#> asset:effect/0357.time_ticker_morning/modifier/remove
#
#
#
# @within function
#   asset:effect/0357.time_ticker_morning/end/
#   asset:effect/0357.time_ticker_morning/remove/
#   asset:effect/0357.time_ticker_morning/tick/

# 物理耐性
    data modify storage api: Argument.UUID set from storage asset:context this.UUID
    function api:modifier/defense/physical/remove

# 与回復量
    data modify storage api: Argument.UUID set from storage asset:context this.UUID
    function api:modifier/heal/remove
