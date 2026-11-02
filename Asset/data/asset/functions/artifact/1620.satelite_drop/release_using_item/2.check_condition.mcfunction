#> asset:artifact/1620.satelite_drop/release_using_item/2.main
#
#
#
# @within function asset:artifact/1620.satelite_drop/release_using_item/1.trigger

# Effect396があるならキャンセル
    data modify storage api: Argument.ID set value 396
    function api:entity/mob/effect/get/from_id
    execute if data storage api: Return.Effect run return fail

# Effect395がある(=チャージ中)ならチャージ終了処理
    data modify storage api: Argument.ID set value 395
    function api:entity/mob/effect/get/from_id
    execute if data storage api: Return.Effect run function asset:artifact/1620.satelite_drop/release_using_item/3.main
