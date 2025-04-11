#> asset:mob/0437.lawless_iron_doll/tick/base_move/chicken_out/remove
#
#
#
# @within function
#   asset:mob/0437.lawless_iron_doll/tick/base_move/chicken_out/remove_check
#   asset:mob/0437.lawless_iron_doll/remove/
#   asset:mob/0437.lawless_iron_doll/death/

# エフェクト消去
    data modify storage api: Argument.ID set value 654
    function api:entity/mob/effect/remove/from_id
    function api:entity/mob/effect/reset
