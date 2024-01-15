#> asset:effect/0014.receive_heal_buff/add_modifier
# @within function asset:effect/0014.receive_heal_buff/*/*

# N*5%の被回復量増加
    data modify storage api: Argument.UUID set value [I;1,3,14,0]
    data modify storage api: Argument.UUID[-2] set from storage asset:context id
    execute store result storage api: Argument.Amount double 0.05 run data get storage asset:context Stack 1
    data modify storage api: Argument.Operation set value "multiply"
    function api:modifier/receive_heal/add
