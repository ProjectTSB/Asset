#> asset:effect/0346.lunatic_time/tick/remove
#
#
#
# @within function asset:effect/0346.lunatic_time/tick/check_mp_per

# このバフをさようならする
    data modify storage api: Argument.ID set value 346
    function api:entity/mob/effect/remove/from_id
    function api:entity/mob/effect/reset
