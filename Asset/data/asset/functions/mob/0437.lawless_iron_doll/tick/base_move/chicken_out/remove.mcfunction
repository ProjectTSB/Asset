#> asset:mob/0437.lawless_iron_doll/tick/base_move/chicken_out/remove
#
#
#
# @within function asset:mob/0437.lawless_iron_doll/tick/base_move/chicken_out/remove_check

# エフェクト消去
    data modify storage api: Argument.ID set value 623
    function api:entity/mob/effect/remove/from_id
    function api:entity/mob/effect/reset
