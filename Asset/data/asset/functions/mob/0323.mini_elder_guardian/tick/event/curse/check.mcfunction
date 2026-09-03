#> asset:mob/0323.mini_elder_guardian/tick/event/curse/check
#
# as player
#
# @within function asset:mob/0323.mini_elder_guardian/tick/event/curse/

#> Private
# @private
    #declare score_holder $8Z.Duration

# 自身の採掘速度低下Lv2の効果時間が10秒以下なら付与
    data modify storage api: Argument.ID set value 76
    function api:entity/mob/effect/get/from_id
    execute store result score $8Z.Duration Temporary run data get storage api: Return.Effect.Duration
    execute if score $8Z.Duration Temporary matches ..200 run function asset:mob/0323.mini_elder_guardian/tick/event/curse/give

# リセット
    scoreboard players reset $8Z.Duration Temporary
