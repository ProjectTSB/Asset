#> asset:effect/0021.mp_regen_debuff/modifier/remove
# @within function asset:effect/0021.mp_regen_debuff/*/

data modify storage api: Argument.UUID set value [I;1,3,-1,0]
data modify storage api: Argument.UUID[2] set from storage asset:context id
function api:modifier/mp_regen/remove
