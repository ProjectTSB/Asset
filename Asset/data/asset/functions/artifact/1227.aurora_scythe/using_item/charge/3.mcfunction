#> asset:artifact/1227.aurora_scythe/using_item/charge/3
#
# チャージ段階を更新する
#
# @within function asset:artifact/1227.aurora_scythe/using_item/charge

# チャージ段階の演出
    playsound entity.evoker.prepare_summon player @a[distance=..10] ~ ~ ~ 0.8 1.8 0.8
    particle dust_color_transition 0.000 1.000 0.886 2 0 0.235 1.3 ~ ~0.4 ~ 0.25 0.25 0.25 0 25 normal

# 発動時の情報を保ってスタックを更新する
    data modify storage api: Argument.ID set value 315
    data modify storage api: Argument.Stack set value 3
    data modify storage api: Argument.FieldOverride set from storage api: Return.Effect.Field
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
