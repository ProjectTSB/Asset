#> asset:effect/0212.lunatic_moon/add_modifier
# @within function asset:effect/0212.lunatic_moon/*/

# 魔法攻撃力+10%
    data modify storage api: Argument.UUID set value [I;1,3,212,0]
    data modify storage api: Argument.Amount set value 0.1
    data modify storage api: Argument.Operation set value "multiply"
    function api:modifier/attack/magic/add
