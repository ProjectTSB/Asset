#> asset:artifact/1620.satelite_drop/using_item/charge/
#
#
#
# @within function asset:artifact/1620.satelite_drop/using_item/charge/check

#> private
# @private
    #declare score_holder $Stack
    #declare score_holder $3

# Effect395のスタックを1増やして付与
    data modify storage api: Argument.ID set value 395
    function api:entity/mob/effect/get/from_id

    data modify storage api: Argument.ID set value 395
    execute store result score $Stack Temporary run data get storage api: Return.Effect.Stack
    scoreboard players add $Stack Temporary 1
    execute store result storage api: Argument.Stack int 1 run scoreboard players operation $Stack Temporary < $3 Const
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset

# リセット
    scoreboard players reset $Stack Temporary
