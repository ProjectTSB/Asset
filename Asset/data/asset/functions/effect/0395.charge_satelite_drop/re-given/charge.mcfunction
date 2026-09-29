#> asset:effect/0395.charge_satelite_drop/re-given/charge
#
#
#
# @within function asset:effect/0395.charge_satelite_drop/re-given/

#> Private
# @private
    #declare score_holder $Stack

# スタック+1
    execute store result score $Stack Temporary run data get storage asset:context Stack
    execute store result storage asset:context Stack int 1 run scoreboard players add $Stack Temporary 1

# MP消費
    data modify storage api: Argument.Fluctuation set value -40
    data modify storage api: Argument.DisableLog set value 1b
    function api:mp/fluctuation

# リセット
    scoreboard players reset $Stack Temporary
