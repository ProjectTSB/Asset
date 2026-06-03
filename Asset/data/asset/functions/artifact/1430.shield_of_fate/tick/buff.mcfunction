#> asset:artifact/1430.shield_of_fate/tick/buff
#
# バフの付与を行う
#
# @within function asset:artifact/1430.shield_of_fate/tick/check_debuff

#>バフ付与
    data modify storage api: Argument.ID set value 354
    execute as @s run function api:entity/mob/effect/give
    function api:entity/mob/effect/reset

#>デバフ削除
    data modify storage api: Argument.ID set value 355
    execute as @s run function api:entity/mob/effect/remove/from_id
    function api:entity/mob/effect/reset
