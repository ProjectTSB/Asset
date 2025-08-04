#> asset:effect/0300.aigis_vitae/re-given/add
# @within function asset:effect/0300.aigis_vitae/re-given/

execute store result storage api: Argument.Amount double 0.01 run scoreboard players get $8C.Temp1 Temporary
data modify storage api: Argument.UUID set value [I;1,3,300,0]
data modify storage api: Argument.WipedCallback set value "asset:effect/0300.aigis_vitae/remove"
function api:entity/player/absorption/add
