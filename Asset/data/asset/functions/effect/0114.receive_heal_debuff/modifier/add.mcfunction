#> asset:effect/0114.receive_heal_debuff/modifier/add
# @within function asset:effect/0114.receive_heal_debuff/*/*

# N*5%の被回復量減少
    data modify storage api: Argument.UUID set value [I;1,3,114,0]
    execute store result storage api: Argument.Amount double -0.05 run data get storage asset:context Stack 1
    data modify storage api: Argument.Operation set value "multiply"
    function api:modifier/receive_heal/add
