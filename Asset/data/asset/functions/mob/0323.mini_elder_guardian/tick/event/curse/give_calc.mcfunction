#> asset:mob/0323.mini_elder_guardian/tick/event/curse/give_calc
#
#
#
# @within function asset:mob/0323.mini_elder_guardian/tick/event/curse/give

#> Private
# @private
    #declare score_holder $CalcA
    #declare score_holder $CalcB
    #declare score_holder $CalcC
    #declare score_holder $CalcD
    #declare score_holder $Difficulty

# スタック及び効果時間の計算
    execute store result score $CalcA Temporary run data get storage asset:temp Debuff.Stack.Base
    execute store result score $CalcB Temporary run data get storage asset:temp Debuff.Stack.Difficulty
    scoreboard players operation $CalcB Temporary *= $Difficulty Temporary
    execute store result storage api: Argument.Stack int 1 run scoreboard players operation $CalcA Temporary += $CalcB Temporary

    execute store result score $CalcC Temporary run data get storage asset:temp Debuff.Duration.Base
    execute store result score $CalcD Temporary run data get storage asset:temp Debuff.Duration.Difficulty
    scoreboard players operation $CalcD Temporary *= $Difficulty Temporary
    execute store result storage api: Argument.Duration int 1 run scoreboard players operation $CalcC Temporary += $CalcD Temporary

# 効果時間が1.. && スタックが1..なら付与
    execute if score $CalcA Temporary matches 1.. if score $CalcC Temporary matches 1.. run function api:entity/mob/effect/give
    function api:entity/mob/effect/reset

#
    scoreboard players reset $CalcA Temporary
    scoreboard players reset $CalcB Temporary
    scoreboard players reset $CalcC Temporary
    scoreboard players reset $CalcD Temporary
