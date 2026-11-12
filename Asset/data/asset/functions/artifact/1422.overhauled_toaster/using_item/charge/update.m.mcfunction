#> asset:artifact/1422.overhauled_toaster/using_item/charge/update.m
#
# チャージ段階を更新して音を再生する
#
# @input args:
#     Stack: int
#     Pitch: double
#   storage api:
#     Argument.FieldOverride: compound (開始時の設定)
#     Return.Effect.Field: compound (段階更新時の設定)
# @within function
#   asset:artifact/1422.overhauled_toaster/using_item/3.main
#   asset:artifact/1422.overhauled_toaster/using_item/charge/

# チャージ段階の演出
    $playsound minecraft:block.note_block.chime player @a ~ ~ ~ 1 $(Pitch)

# 開始時の設定を保ち、2段階目以降は取得したFieldを引き継ぐ
    data modify storage api: Argument.ID set value 415
    $data modify storage api: Argument.Stack set value $(Stack)
    execute unless data storage api: Argument{Stack:1} run data modify storage api: Argument.FieldOverride set from storage api: Return.Effect.Field
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
