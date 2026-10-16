#> asset:artifact/1430.shield_of_fate/tick/check_buff
#
# デバフが付与されていれば削除しバフ付与の処理を行う
#
# @within function asset:artifact/1430.shield_of_fate/tick/2.check_condition

# buff(ID 354)を検索する
    data modify storage api: Argument.ID set value 354
    function api:entity/mob/effect/get/from_id

# 付与されていなかったら実行
    execute unless data storage api: Return.Effect run function asset:artifact/1430.shield_of_fate/effect/buff_give
    execute unless data storage api: Return.Effect run function asset:artifact/1430.shield_of_fate/effect/debuff_remove
