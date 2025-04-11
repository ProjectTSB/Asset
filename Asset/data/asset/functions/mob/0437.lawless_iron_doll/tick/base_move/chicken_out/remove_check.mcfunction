#> asset:mob/0437.lawless_iron_doll/tick/base_move/chicken_out/remove_check
#
#
#
# @within function asset:mob/0437.lawless_iron_doll/tick/base_move/chicken_out/boarder

# デバフにかかっているかを確認
    data modify storage api: Argument.ID set value 654
    function api:entity/mob/effect/get/from_id

# エフェクトが付与されていれば、削除
    execute if data storage api: Return.Effect run function asset:mob/0437.lawless_iron_doll/tick/base_move/chicken_out/remove
