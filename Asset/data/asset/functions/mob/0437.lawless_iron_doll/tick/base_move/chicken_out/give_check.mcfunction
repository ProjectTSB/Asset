#> asset:mob/0437.lawless_iron_doll/tick/base_move/chicken_out/give_check
#
#
#
# @within function asset:mob/0437.lawless_iron_doll/tick/base_move/chicken_out/boarder

# デバフにかかっているかを確認
    data modify storage api: Argument.ID set value 654
    function api:entity/mob/effect/get/from_id

# エフェクトが付与されていなければ、付与
    execute unless data storage api: Return.Effect run function asset:mob/0437.lawless_iron_doll/tick/base_move/chicken_out/give
