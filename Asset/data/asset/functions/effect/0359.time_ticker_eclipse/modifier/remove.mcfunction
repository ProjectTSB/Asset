#> asset:effect/0359.time_ticker_eclipse/modifier/remove
#
#
#
# @within function
#   asset:effect/0359.time_ticker_eclipse/end/
#   asset:effect/0359.time_ticker_eclipse/remove/
#   asset:effect/0359.time_ticker_eclipse/tick/

# 攻撃
    data modify storage api: Argument.UUID set from storage asset:context this.UUID
    function api:modifier/attack/base/remove

# 耐性
    data modify storage api: Argument.UUID set from storage asset:context this.UUID
    function api:modifier/defense/base/remove

# 与回復量
    data modify storage api: Argument.UUID set from storage asset:context this.UUID
    function api:modifier/heal/remove

# MP回復量
    data modify storage api: Argument.UUID set from storage asset:context this.UUID
    function api:modifier/mp_heal/remove
