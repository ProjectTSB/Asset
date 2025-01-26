#> asset:mob/0104.mad_scientist/tick/summon/poison
#
#
#
# @within function asset:mob/0104.mad_scientist/tick/summon/summon

#> Private
# @private
    #declare score_holder $Difficulty
    #declare score_holder $Stack

# 毒ポーションなら難易度に比例した毒のデータをフィールドに突っ込んでおく
# Stack = (this.Poison.Stack * Difficulty)
    function api:global_vars/get_difficulty
    execute store result score $Difficulty Temporary run data get storage api: Return.Difficulty
    data modify storage api: Argument.FieldOverride.Poison.Duration set from storage asset:context this.Poison.Duration
    execute store result score $Stack Temporary run data get storage asset:context this.Poison.Stack
    execute store result storage api: Argument.FieldOverride.Poison.Stack int 1 run scoreboard players operation $Stack Temporary *= $Difficulty Temporary

# リセット
    scoreboard players reset $Difficulty Temporary
    scoreboard players reset $Stack Temporary
