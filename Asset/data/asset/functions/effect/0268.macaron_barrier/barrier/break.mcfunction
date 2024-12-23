#> asset:effect/0268.macaron_barrier/barrier/break
#
# バリア破壊時の処理
#
# @within function lib:score_to_health_wrapper/core/absorb_damage/call_wiped_callback.m

# このエフェクトを削除する
    data modify storage api: Argument.ID set value 268
    function api:entity/mob/effect/remove/from_id
    function api:entity/mob/effect/reset
