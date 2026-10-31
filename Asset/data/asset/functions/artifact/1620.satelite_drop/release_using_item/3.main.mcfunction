#> asset:artifact/1620.satelite_drop/release_using_item/3.main
#
#
#
# @within function asset:artifact/1620.satelite_drop/release_using_item/2.check_condition

#> private
# @private
    #declare score_holder $A1620.Stack

# Effect395から情報を取得してEffect396を付与
    data modify storage api: Argument.ID set value 395
    function api:entity/mob/effect/get/from_id
    data modify storage api: Argument.ID set value 396
    data modify storage api: Argument.FieldOverride.Damage set value 150
    data modify storage api: Argument.FieldOverride.AttackType set value "Magic"
    data modify storage api: Argument.FieldOverride.ElementType set value "Water"

    execute store result score $A1620.Stack Temporary run data get storage api: Return.Effect.Stack
    execute store result storage api: Argument.Stack int 1 run scoreboard players get $A1620.Stack Temporary
    execute store result storage api: Argument.Duration int 600 run scoreboard players get $A1620.Stack Temporary
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset

# Effect395を削除
    data modify storage api: Argument.ID set value 395
    function api:entity/mob/effect/remove/from_id
    function api:entity/mob/effect/reset

# リセット
    scoreboard players reset $A1620.Stack
