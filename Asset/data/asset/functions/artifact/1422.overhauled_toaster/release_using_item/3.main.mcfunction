#> asset:artifact/1422.overhauled_toaster/release_using_item/3.main
#
# チャージ段階に応じたパンを射出する
#
# @within function asset:artifact/1422.overhauled_toaster/release_using_item/2.check_condition

# 発射用Effectへチャージ段階と弾速・威力・射程を渡す
    data modify storage api: Argument.ID set value 434
    data modify storage api: Argument.Stack set from storage api: Return.Effect.Stack
    data modify storage api: Argument.FieldOverride.Range set value 40
    data modify storage api: Argument.FieldOverride.Speed set value [1,1,1,2,2,2,4]
    data modify storage api: Argument.FieldOverride.Damage set value [40,70,120,120,120,120,120]
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset

# チャージ用Effectを削除する
    data modify storage api: Argument.ID set value 415
    function api:entity/mob/effect/remove/from_id
    function api:entity/mob/effect/reset
