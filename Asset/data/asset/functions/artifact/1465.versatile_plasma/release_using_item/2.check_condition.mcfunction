#> asset:artifact/1465.versatile_plasma/release_using_item/2.check_condition
#
#
#
# @within function asset:artifact/1465.versatile_plasma/release_using_item/1.trigger

# チャージ時間で攻撃を分ける
    data modify storage api: Argument.ID set value 374
    function api:entity/mob/effect/get/from_id

    execute if data storage api: Return.Effect{Stack:1} run function asset:artifact/1465.versatile_plasma/release_using_item/3.1.spark/
    execute if data storage api: Return.Effect{Stack:2} anchored eyes positioned ^ ^-0.25 ^ run function asset:artifact/1465.versatile_plasma/release_using_item/3.2.beam/
    execute if data storage api: Return.Effect{Stack:3} run function asset:artifact/1465.versatile_plasma/release_using_item/3.3.laser/

# Effect374を削除
    data modify storage api: Argument.ID set value 374
    function api:entity/mob/effect/remove/from_id
    function api:entity/mob/effect/reset
