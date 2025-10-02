#> asset:effect/0021.mp_regen_debuff/modifier/add
# @within function asset:effect/0021.mp_regen_debuff/*/

data modify storage api: Argument.UUID set value [I;1,3,-1,0]
data modify storage api: Argument.UUID[2] set from storage asset:context id
execute store result storage api: Argument.Amount double 0.05 run data get storage asset:context Stack
data modify storage api: Argument.Operation set value "multiply"
function api:modifier/mp_regen/add
