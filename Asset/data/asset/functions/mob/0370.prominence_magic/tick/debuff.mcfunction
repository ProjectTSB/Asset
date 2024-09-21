#> asset:mob/0370.prominence_magic/tick/debuff
#
# デバフを付与
#
# @within function asset:mob/0370.prominence_magic/tick/damage

#> Private
# @private
    #declare score_holder $Difficulty

# 難易度値を取得
    function api:global_vars/get_difficulty
    execute store result score $Difficulty Temporary run data get storage api: Return.Difficulty

# デバフを付与
# Duration = 50(N+1)Tick
# Stack = (Difficulty - 1)
    data modify storage api: Argument.ID set value 614
    execute store result storage api: Argument.Duration int 50 run scoreboard players add $Difficulty Temporary 1
    execute store result storage api: Argument.Stack int 1 run scoreboard players remove $Difficulty Temporary 2
    function api:entity/mob/effect/give
