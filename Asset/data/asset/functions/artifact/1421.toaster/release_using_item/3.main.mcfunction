#> asset:artifact/1421.toaster/release_using_item/3.main
#
# チャージ段階に応じたパンを射出する
#
# @within function asset:artifact/1421.toaster/release_using_item/2.check_condition

# 発射用Effectへチャージ段階と発動時の情報を渡す
    data modify storage api: Argument.ID set value 416
    data modify storage api: Argument.Stack set from storage api: Return.Effect.Stack
    data modify storage api: Argument.FieldOverride set from storage api: Return.Effect.Field
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset

# チャージ用Effectを削除する
    data modify storage api: Argument.ID set value 415
    function api:entity/mob/effect/remove/from_id
    function api:entity/mob/effect/reset
