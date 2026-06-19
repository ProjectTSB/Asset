#> asset:mob/0323.mini_elder_guardian/tick/event/curse/check
#
# as player
#
# @within function asset:mob/0323.mini_elder_guardian/tick/event/curse/

# 自身に採掘速度低下Lv2がなければデバフを付与
    data modify storage api: Argument.ID set value 76
    function api:entity/mob/effect/get/from_id
    execute unless data storage api: Return.Effect run function asset:mob/0323.mini_elder_guardian/tick/event/curse/give
