#> asset:mob/0364.white_magic/tick/debuff
#
# デバフを付与
#
# @within function asset:mob/0364.white_magic/tick/attack

#> Private
# @private
    #declare score_holder $Difficulty

# 白呪(ID:613)を付与
# Stack = 難易度値 Duration = 50(難易度値 + 1)Tick

# 難易度値を取得しスコアへ代入
    function api:global_vars/get_difficulty
    execute store result score $Difficulty Temporary run data get storage api: Return.Difficulty

# 付与
    data modify storage api: Argument.ID set value 613
    execute store result storage api: Argument.Stack int 1 run scoreboard players get $Difficulty Temporary
    execute store result storage api: Argument.Duration int 50 run scoreboard players add $Difficulty Temporary 1
    function api:entity/mob/effect/give
