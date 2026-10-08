#> asset:artifact/1430.shield_of_fate/effect/debuff_remove
#
# デバフの削除
#
# @within function
#   asset:artifact/1430.shield_of_fate/tick/check_buff
#   asset:artifact/1430.shield_of_fate/tick/2.check_condition

#>デバフ削除
    data modify storage api: Argument.ID set value 355
    function api:entity/mob/effect/remove/from_id
    function api:entity/mob/effect/reset
