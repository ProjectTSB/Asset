#> asset:artifact/0274.pulse_armor/modifier/add
# @within function
#   asset:artifact/0274.pulse_armor/given/
#   asset:artifact/0274.pulse_armor/re-given/

#> private
# @private
    #declare score_holder $7M.Amount

# MP回復量
# Amount = Stack * Stack * 0.025
    data modify storage api: Argument.UUID set value [I;1,3,274,0]
    execute store result score $7M.Amount Temporary run data get storage asset:context Stack
    execute store result storage api: Argument.Amount double 0.025 run scoreboard players operation $7M.Amount Temporary *= $7M.Amount Temporary
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/mp_regen/add
    scoreboard players reset $7M.Amount
