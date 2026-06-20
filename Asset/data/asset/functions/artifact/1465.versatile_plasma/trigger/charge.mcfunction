#> asset:artifact/1465.versatile_plasma/trigger/charge
#
#
#
# @within function asset:artifact/1465.versatile_plasma/trigger/2.check_condition

#> Private
# @private
    #declare score_holder $MP

# MPが足りないならキャンセル
    function api:mp/get_current
    execute store result score $MP Temporary run data get storage api: Return.CurrentMP 10
    execute unless score $MP Temporary matches 1.. run return fail

# チャージ用Effectを付与
    data modify storage api: Argument.ID set value 374
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset

# MP消費
    data modify storage api: Argument.Fluctuation set value -1
    data modify storage api: Argument.DisableLog set value 1b
    function api:mp/fluctuation
