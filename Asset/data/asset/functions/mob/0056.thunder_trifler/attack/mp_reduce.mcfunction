#> asset:mob/0056.thunder_trifler/attack/mp_reduce
#
# MPを減らす
#
# @within function asset:mob/0056.thunder_trifler/attack/

#> Private
# @private
    #declare score_holder $Difficulty
    #declare score_holder $Base

# Field[1]の値を取得
    execute store result score $Base Temporary run data get storage asset:context this[1]

# 難易度値を取得し、1減らす
    function api:global_vars/get_difficulty
    execute store result score $Difficulty Temporary run data get storage api: Return.Difficulty
    scoreboard players remove $Difficulty Temporary 1

# Field[1] * (難易度値-1)、MPを減らす
    execute store result storage api: Argument.Fluctuation int -1 run scoreboard players operation $Base Temporary *= $Difficulty Temporary
    execute as @p[tag=Victim] run function api:mp/fluctuation

# リセット
    scoreboard players reset $Difficulty Temporary
    scoreboard players reset $Base Temporary