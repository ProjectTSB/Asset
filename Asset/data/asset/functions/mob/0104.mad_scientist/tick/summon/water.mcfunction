#> asset:mob/0104.mad_scientist/tick/summon/water
#
#
#
# @within function asset:mob/0104.mad_scientist/tick/summon/summon

#> Private
# @private
    #declare score_holder $Difficulty
    #declare score_holder $Stack

# 水ポーションのダメージ
    data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Damage.Water

# 鈍足のデータを計算して突っ込む
# Stack = (this.Slowness.Stack * Difficulty)
    function api:global_vars/get_difficulty
    execute store result score $Difficulty Temporary run data get storage api: Return.Difficulty
    data modify storage api: Argument.FieldOverride.Slowness.Duration set from storage asset:context this.Slowness.Duration
    execute store result score $Stack Temporary run data get storage asset:context this.Slowness.Stack
    execute store result storage api: Argument.FieldOverride.Slowness.Stack int 1 run scoreboard players operation $Stack Temporary *= $Difficulty Temporary

# リセット
    scoreboard players reset $Difficulty Temporary
    scoreboard players reset $Stack Temporary
