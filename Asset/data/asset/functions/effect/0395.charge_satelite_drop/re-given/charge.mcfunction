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

# 演出
    playsound item.bucket.empty player @a ~ ~ ~ 1 1.3
    playsound entity.experience_orb.pickup player @a ~ ~ ~ 1 2.0
    particle wax_off ~ ~0.5 ~ 0.2 0.5 0.2 3 15

# リセット
    scoreboard players reset $Stack Temporary
