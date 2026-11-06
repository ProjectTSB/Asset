#> asset:artifact/1256.deep_azure/using_item/charge/2
#
# チャージ段階を更新する
#
# @within function asset:artifact/1256.deep_azure/using_item/charge

# チャージ段階の演出
    playsound block.conduit.activate player @a ~ ~ ~ 1.5 1.6
    playsound block.conduit.activate player @a ~ ~ ~ 1.5 1.6
    particle dust 0.1 0.1 0.7 1 ~ ~0.4 ~ 0.25 0.25 0.25 0 15 normal

# 発動時の情報を保ってスタックを更新する
    data modify storage api: Argument.ID set value 329
    data modify storage api: Argument.Stack set value 2
    data modify storage api: Argument.FieldOverride set from storage api: Return.Effect.Field
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
