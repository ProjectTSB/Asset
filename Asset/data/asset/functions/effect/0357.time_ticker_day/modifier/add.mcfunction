#> asset:effect/0357.time_ticker_day/modifier/add
#
#
#
# @within function asset:effect/0357.time_ticker_day/given/

# 物理耐性
    data modify storage api: Argument.UUID set from storage asset:context this.UUID
    data modify storage api: Argument.Amount set from storage asset:context this.Modifier.PhysicalDefense
    data modify storage api: Argument.Operation set value "multiply"
    function api:modifier/defense/physical/add

# 与回復量
    data modify storage api: Argument.UUID set from storage asset:context this.UUID
    data modify storage api: Argument.Amount set from storage asset:context this.Modifier.Heal
    data modify storage api: Argument.Operation set value "multiply"
    function api:modifier/heal/add
