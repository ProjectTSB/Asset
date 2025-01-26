#> asset:mob/0104.mad_scientist/tick/summon/thunder
#
#
#
# @within function asset:mob/0104.mad_scientist/tick/summon/summon

#> Private
# @private
    #declare score_holder $Difficulty
    #declare score_holder $MPReduceVal

# 雷ポーションのダメージ
    data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Damage.Thunder

# 雷ポーションなら難易度値に比例したMP減少量をフィールドに突っ込んでおく
# MPReduceVal = (this.MPReduceVal * 難易度値)
    function api:global_vars/get_difficulty
    execute store result score $Difficulty Temporary run data get storage api: Return.Difficulty
    execute store result score $MPReduceVal Temporary run data get storage asset:context this.MPReduceVal
    execute store result storage api: Argument.FieldOverride.MPReduceVal int 1 run scoreboard players operation $MPReduceVal Temporary *= $Difficulty Temporary

# リセット
    scoreboard players reset $Difficulty Temporary
    scoreboard players reset $MPReduceVal Temporary
