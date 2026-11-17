#> asset:artifact/1228.fatalerror/release_using_item/3.main
#
# チャージ段階に応じた効果を発動する
#
# @within function asset:artifact/1228.fatalerror/release_using_item/2.check_condition

# レーザーの命中処理へ発動時のダメージを保持する
    data modify storage asset:artifact Charge1228.Damage set from storage api: Return.Effect.Field.Damage
    function asset:artifact/1228.fatalerror/release_using_item/shoot

# チャージ用Effectを削除する
    data modify storage api: Argument.ID set value 320
    function api:entity/mob/effect/remove/from_id
    function api:entity/mob/effect/reset

# 発動中のデータと命中判定を片付ける
    data remove storage asset:artifact Charge1228
    kill @e[type=marker,tag=SpreadMarker,distance=..10]
    tag @s[tag=Landing] remove Landing
    tag @e[type=#lib:living,tag=Target,distance=..40] remove Target
