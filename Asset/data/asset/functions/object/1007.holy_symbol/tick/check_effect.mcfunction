#> asset:object/1007.holy_symbol/tick/check_effect
#
#
#
# @within function asset:object/1007.holy_symbol/tick/

# 浄化の反動(ID:216)がないかチェック
    data modify storage api: Argument.ID set value 216
    function api:entity/mob/effect/get/from_id
# なければ浄化(ID:215)を付与
    execute unless data storage api: Return.Effect run function asset:object/1007.holy_symbol/tick/give_effect
