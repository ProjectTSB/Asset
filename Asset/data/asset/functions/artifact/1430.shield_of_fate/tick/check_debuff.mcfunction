#> asset:artifact/1430.shield_of_fate/tick/check_debuff
#
# バフが付与されていれば削除しデバフ付与の処理を行う
#
# @within function asset:artifact/1430.shield_of_fate/tick/2.check_condition

# debuff(ID 355)を検索する
    data modify storage api: Argument.ID set value 355
    function api:entity/mob/effect/get/from_id

# 付与されていなかったら実行
    execute unless data storage api: Return.Effect run function asset:artifact/1430.shield_of_fate/effect/debuff_give
    execute unless data storage api: Return.Effect run function asset:artifact/1430.shield_of_fate/effect/buff_remove
