#> asset:artifact/1430.shield_of_fate/effect/buff_remove
#
# バフの削除
#
# @within function
#   asset:artifact/1430.shield_of_fate/tick/check_debuff
#   asset:artifact/1430.shield_of_fate/tick/2.check_condition

#>バフ削除
    data modify storage api: Argument.ID set value 354
    function api:entity/mob/effect/remove/from_id
    function api:entity/mob/effect/reset
