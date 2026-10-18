#> asset:artifact/1256.deep_azure/using_item/charge/3
#
# チャージ段階を更新する
#
# @within function asset:artifact/1256.deep_azure/using_item/charge

# チャージ段階の演出
    playsound block.conduit.activate player @a ~ ~ ~ 1.8 1.8
    playsound block.conduit.activate player @a ~ ~ ~ 1.8 1.8
    particle dust 0 0 0.4 1.2 ~ ~0.4 ~ 0.25 0.25 0.25 0 25 normal

# 発動時の情報を保ってスタックを更新する
    data modify storage api: Argument.ID set value 329
    data modify storage api: Argument.Stack set value 3
    data modify storage api: Argument.FieldOverride set from storage api: Return.Effect.Field
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
