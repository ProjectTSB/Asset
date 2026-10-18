#> asset:artifact/1228.fatalerror/using_item/charge/2
#
# チャージ段階を更新する
#
# @within function asset:artifact/1228.fatalerror/using_item/charge

# チャージ段階の演出
    playsound block.respawn_anchor.charge player @a ~ ~ ~ 0.35 1.6
    particle dust_color_transition 0.000 1.000 0.886 1 0 0.235 1 ~ ~0.4 ~ 0.25 0.25 0.25 0 15 normal

# 発動時の情報を保ってスタックを更新する
    data modify storage api: Argument.ID set value 320
    data modify storage api: Argument.Stack set value 2
    data modify storage api: Argument.FieldOverride set from storage api: Return.Effect.Field
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
