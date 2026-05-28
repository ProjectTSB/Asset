#> asset:effect/0299.achilles_tendon_rupture/modifier/add
# @within function asset:effect/0299.achilles_tendon_rupture/given/

# 移動速度
    function asset:effect/0299.achilles_tendon_rupture/modifier/speed.m with storage asset:context this.Modifier

# 耐性
    data modify storage api: Argument.UUID set value [I;1,3,299,0]
    data modify storage api: Argument.Amount set from storage asset:context this.Modifier.Defense
    data modify storage api: Argument.Operation set value "multiply"
    function api:modifier/defense/base/add
