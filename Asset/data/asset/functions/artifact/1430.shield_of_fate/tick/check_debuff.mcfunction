#> asset:artifact/1430.shield_of_fate/tick/check_debuff
#
# デバフが付与されていれば削除しバフ付与の処理を行う
#
# @within function asset:artifact/1430.shield_of_fate/tick/2.check_condition

# 耐性エフェクト(ID 354)を検索する
    data modify storage api: Argument.ID set value 355
    function api:entity/mob/effect/get/from_id

# 付与されていたら実行
    execute if data storage api: Return.Effect run function asset:artifact/1430.shield_of_fate/tick/buff
