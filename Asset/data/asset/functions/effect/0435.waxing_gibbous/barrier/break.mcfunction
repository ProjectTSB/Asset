#> asset:effect/0435.waxing_gibbous/barrier/break
#
#
#
# @within function asset:effect/0435.waxing_gibbous/barrier/add

# エフェクトを削除
    data modify storage api: Argument.ID set value 435
    function api:entity/mob/effect/remove/from_id
    function api:entity/mob/effect/reset
