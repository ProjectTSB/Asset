#> asset:effect/0299.achilles_tendon_rupture/modifier/remove
# @within function
#   asset:effect/0299.achilles_tendon_rupture/end/
#   asset:effect/0299.achilles_tendon_rupture/remove/

# 移動速度
    attribute @s generic.movement_speed modifier remove 00000001-0000-0003-0000-012b00000000

# 耐性
    data modify storage api: Argument.UUID set value [I;1,3,299,0]
    function api:modifier/defense/base/remove
