#> asset:artifact/1620.satelite_drop/using_item/charge/
#
#
#
# @within function asset:artifact/1620.satelite_drop/using_item/charge/check

#> private
# @private
    #declare score_holder $A1620.Stack

# Effect395のスタックを1増やして付与
    data modify storage api: Argument.ID set value 395
    function api:entity/mob/effect/get/from_id

    data modify storage api: Argument.ID set value 395
    execute store result score $A1620.Stack Temporary run data get storage api: Return.Effect.Stack
    execute store result storage api: Argument.Stack int 1 run scoreboard players add $A1620.Stack Temporary 1
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset

# スタックが最大ならこの先の処理はスキップ
    execute if score $A1620.Stack Temporary matches 4.. run return run scoreboard players reset $A1620.Stack Temporary

# MP消費
    data modify storage api: Argument.Fluctuation set value -40
    data modify storage api: Argument.DisableLog set value 1b
    function api:mp/fluctuation

# 演出
    playsound item.bucket.empty player @a ~ ~ ~ 1 1.3
    playsound entity.experience_orb.pickup player @a ~ ~ ~ 1 2.0
    particle wax_off ~ ~0.5 ~ 0.2 0.5 0.2 3 15

# リセット
    scoreboard players reset $A1620.Stack
