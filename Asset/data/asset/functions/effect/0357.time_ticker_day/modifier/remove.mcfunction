#> asset:effect/0357.time_ticker_day/modifier/remove
#
#
#
# @within function
#   asset:effect/0357.time_ticker_day/end/
#   asset:effect/0357.time_ticker_day/remove/
#   asset:effect/0357.time_ticker_day/tick/

# 物理耐性
    data modify storage api: Argument.UUID set from storage asset:context this.UUID
    function api:modifier/defense/physical/remove

# 与回復量
    data modify storage api: Argument.UUID set from storage asset:context this.UUID
    function api:modifier/heal/remove
