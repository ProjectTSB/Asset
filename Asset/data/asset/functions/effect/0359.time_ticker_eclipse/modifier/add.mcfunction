#> asset:effect/0359.time_ticker_eclipse/modifier/add
#
#
#
# @within function asset:effect/0359.time_ticker_eclipse/given/

# 攻撃
    data modify storage api: Argument.UUID set from storage asset:context this.UUID
    data modify storage api: Argument.Amount set from storage asset:context this.Modifier.Eclipse.Attack
    data modify storage api: Argument.Operation set value "multiply"
    function api:modifier/attack/base/add

# 耐性
    data modify storage api: Argument.UUID set from storage asset:context this.UUID
    data modify storage api: Argument.Amount set from storage asset:context this.Modifier.Eclipse.Defense
    data modify storage api: Argument.Operation set value "multiply"
    function api:modifier/defense/base/add

# 与回復量
    data modify storage api: Argument.UUID set from storage asset:context this.UUID
    data modify storage api: Argument.Amount set from storage asset:context this.Modifier.Eclipse.Heal
    data modify storage api: Argument.Operation set value "multiply"
    function api:modifier/heal/add

# MP回復量
    data modify storage api: Argument.UUID set from storage asset:context this.UUID
    data modify storage api: Argument.Amount set from storage asset:context this.Modifier.Eclipse.MPHeal
    data modify storage api: Argument.Operation set value "multiply"
    function api:modifier/mp_heal/add
