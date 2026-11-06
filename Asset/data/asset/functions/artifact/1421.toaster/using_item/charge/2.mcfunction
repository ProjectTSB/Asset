#> asset:artifact/1421.toaster/using_item/charge/2
#
# チャージ段階を更新する
#
# @within function asset:artifact/1421.toaster/using_item/charge

# チャージ段階の演出
    playsound minecraft:block.note_block.chime player @a ~ ~ ~ 1 1.9

# 発動時の情報を保ってスタックを更新する
    data modify storage api: Argument.ID set value 415
    data modify storage api: Argument.Stack set value 2
    data modify storage api: Argument.FieldOverride set from storage api: Return.Effect.Field
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
