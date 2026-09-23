#> asset:effect/0395.charge_satelite_drop/re-given/charge
#
#
#
# @within function asset:effect/0395.charge_satelite_drop/re-given/

#> Private
# @private
    #declare score_holder $Stack

# # Effect 396を付与
#     data modify storage api: Argument.ID set value 396
#     function api:entity/mob/effect/give
#     function api:entity/mob/effect/reset

# スタック+1
    execute store result score $Stack Temporary run data get storage asset:context Stack
    execute store result storage asset:context Stack int 1 run scoreboard players add $Stack Temporary 1

# リセット
    scoreboard players reset $Stack Temporary
