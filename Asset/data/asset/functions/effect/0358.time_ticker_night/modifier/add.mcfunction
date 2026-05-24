#> asset:effect/0358.time_ticker_night/modifier/add
#
#
#
# @within function asset:effect/0358.time_ticker_night/given/

# 魔法耐性
    data modify storage api: Argument.UUID set from storage asset:context this.UUID
    data modify storage api: Argument.Amount set from storage asset:context this.Modifier.MagicDefense
    data modify storage api: Argument.Operation set value "multiply"
    function api:modifier/defense/magic/add

# MP回復量
    data modify storage api: Argument.UUID set from storage asset:context this.UUID
    data modify storage api: Argument.Amount set from storage asset:context this.Modifier.MPHeal
    data modify storage api: Argument.Operation set value "multiply"
    function api:modifier/mp_heal/add
