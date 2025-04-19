#> asset:effect/0299.achilles_tendon_rupture/modifier/add
# @within function asset:effect/0299.achilles_tendon_rupture/given/

# 移動速度
    attribute @s generic.movement_speed modifier add 00000001-0000-0003-0000-012b00000000 "299.MovementSpeed" -0.50 multiply

# 耐性
    data modify storage api: Argument.UUID set value [I;1,3,299,0]
    data modify storage api: Argument.Amount set value -0.50d
    data modify storage api: Argument.Operation set value "multiply"
    function api:modifier/defense/base/add
