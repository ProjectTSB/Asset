#> asset:effect/0344.spring_wind/barrier/break
#
#
#
# @within function lib:score_to_health_wrapper/core/absorb_damage/call_wiped_callback.m

# このエフェクトを削除
    data modify storage api: Argument.ID set value 344
    function api:entity/mob/effect/remove/from_id
    function api:entity/mob/effect/reset
