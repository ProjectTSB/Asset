#> asset:mob/0323.mini_elder_guardian/tick/event/curse/give
#
#
#
# @within function asset:mob/0323.mini_elder_guardian/tick/event/curse/

#> Private
# @private
    #declare score_holder $Difficulty

# 演出
    execute as @a[tag=DebuffTarget,distance=..32] at @s run particle elder_guardian ~ ~ ~ 0 0 0 0 1 normal @s
    execute as @a[tag=DebuffTarget,distance=..32] at @s run playsound entity.elder_guardian.curse hostile @s ~ ~ ~ 1 1

# 難易度値取得
    function api:global_vars/get_difficulty
    execute store result score $Difficulty Temporary run data get storage api: Return.Difficulty

# 採掘速度低下を付与
    data modify storage api: Argument.ID set value 76
    data modify storage asset:temp Debuff set from storage asset:context this.Debuff.A
    function asset:mob/0323.mini_elder_guardian/tick/event/curse/give_calc

# 水耐性低下を付与
    data modify storage api: Argument.ID set value 61
    data modify storage asset:temp Debuff set from storage asset:context this.Debuff.B
    function asset:mob/0323.mini_elder_guardian/tick/event/curse/give_calc

# リセット
    scoreboard players reset $Difficulty Temporary
    data remove storage asset:temp Debuff
