#> asset:artifact/1256.deep_azure/release_using_item/2.check_condition
#
# チャージがあるときだけ発動する
#
# @within function asset:artifact/1256.deep_azure/release_using_item/1.trigger

# チャージ用Effectを取得する
    data modify storage api: Argument.ID set value 329
    function api:entity/mob/effect/get/from_id
    execute unless data storage api: Return.Effect run return fail

# チャージした効果を発動する
    function asset:artifact/1256.deep_azure/release_using_item/3.main
