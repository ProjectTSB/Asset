#> asset:effect/0437.phoenix_shield/barrier/break
#
# バリアが全て削られた時の処理
#
# @within function lib:score_to_health_wrapper/core/absorb_damage/call_wiped_callback.m

# このエフェクトを削除
    data modify storage api: Argument.ID set value 437
    function api:entity/mob/effect/remove/from_id
    function api:entity/mob/effect/reset
