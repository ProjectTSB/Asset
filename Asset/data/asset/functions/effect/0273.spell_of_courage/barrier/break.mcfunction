#> asset:effect/0273.spell_of_courage/barrier/break
#
# バリアが破壊されたときの処理
#
# @within function lib:score_to_health_wrapper/core/absorb_damage/call_wiped_callback.m

# このエフェクトを削除
    data modify storage api: Argument.ID set value 273
    function api:entity/mob/effect/remove/from_id
    function api:entity/mob/effect/reset
