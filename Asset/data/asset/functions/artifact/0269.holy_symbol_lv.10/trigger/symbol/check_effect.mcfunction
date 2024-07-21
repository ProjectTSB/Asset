#> asset:artifact/0269.holy_symbol_lv.10/trigger/symbol/check_effect
#
# 特定のエフェクトがあるか確認する
#
# @within function asset:artifact/0269.holy_symbol_lv.10/trigger/symbol/

# 浄化の反動(ID:216)がないかチェック
    data modify storage api: Argument.ID set value 216
    function api:entity/mob/effect/get/from_id
# なければ浄化(ID:215)を付与
    execute unless data storage api: Return.Effect run function asset:artifact/0269.holy_symbol_lv.10/trigger/symbol/give_effect
