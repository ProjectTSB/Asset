#> asset:effect/0267.dreaming_veil/barrier/break
#
# バリア破壊時の処理
#
# @within function lib:score_to_health_wrapper/core/absorb_damage/call_wiped_callback.m

# このエフェクトを削除
    data modify storage api: Argument.ID set value 267
    function api:entity/mob/effect/remove/from_id
