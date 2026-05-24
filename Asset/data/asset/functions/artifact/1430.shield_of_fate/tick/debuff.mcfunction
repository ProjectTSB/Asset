#> asset:artifact/1430.shield_of_fate/tick/debuff
#
# デバフの付与を行う
#
# @within function asset:artifact/1430.shield_of_fate/tick/check_buff

#>デバフ付与
    data modify storage api: Argument.ID set value 355
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset

#>バフ削除
    data modify storage api: Argument.ID set value 354
    function api:entity/mob/effect/remove/from_id
    function api:entity/mob/effect/reset
