#> asset:mob/0464.drain_plant/attack/mp_reduce
#
#
#
# @within function asset:mob/0464.drain_plant/attack/

# MP減少
    execute store result storage api: Argument.Fluctuation int -1 run scoreboard players get $CalcA Temporary
    function api:mp/fluctuation
