#> asset:mob/0323.mini_elder_guardian/tick/event/curse/give
#
#
#
# @within function asset:mob/0323.mini_elder_guardian/tick/event/curse/check

#> Private
# @private
    #declare score_holder $Duration

# 演出
    execute at @s run particle elder_guardian ~ ~ ~ 0 0 0 0 1 normal @s
    execute at @s run playsound entity.elder_guardian.curse hostile @s ~ ~ ~ 1 1

# 難易度値取得
    function api:global_vars/get_difficulty

# 採掘速度低下Lv2
# Duration = 200 + 100* Difficulty
    data modify storage api: Argument.ID set value 76
    data modify storage api: Argument.Stack set value 3
    execute store result score $Duration Temporary run data get storage api: Return.Difficulty 100
    execute store result storage api: Argument.Duration int 1 run scoreboard players add $Duration Temporary 200
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset

    scoreboard players reset $Duration Temporary

# Blessless限定
    execute unless predicate api:global_vars/difficulty/min/3_blessless run return fail

    return 0

# 水耐性低下
    data modify storage api: Argument.ID set value 323
    data modify storage api: Argument.Stack set value 600
    data modify storage api: Argument.Duration set value 600
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
