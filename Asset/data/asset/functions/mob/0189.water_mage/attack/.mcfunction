#> asset:mob/0189.water_mage/attack/
#
# Mobの攻撃時の処理
#
# @within function asset:mob/alias/189/attack

#> Private
# @private
    #declare score_holder $CalcA
    #declare score_holder $CalcB
    #declare score_holder $CalcC
    #declare score_holder $CalcD
    #declare score_holder $Difficulty

# 特定のMetadataがなければreturn
    execute unless data storage asset:context Attack{Metadata:"189.WaterMage"} run return fail

# Hard以下ならreturn
    execute if predicate api:global_vars/difficulty/max/2_hard run return fail

# 難易度値取得
    function api:global_vars/get_difficulty
    execute store result score $Difficulty Temporary run data get storage api: Return.Difficulty

# スタック及び効果時間の計算
    execute store result score $CalcA Temporary run data get storage asset:context this.Stack.Base
    execute store result score $CalcB Temporary run data get storage asset:context this.Stack.Difficulty
    scoreboard players operation $CalcB Temporary *= $Difficulty Temporary
    execute store result storage api: Argument.Stack int 1 run scoreboard players operation $CalcA Temporary += $CalcB Temporary

    execute store result score $CalcC Temporary run data get storage asset:context this.Duration.Base
    execute store result score $CalcD Temporary run data get storage asset:context this.Duration.Difficulty
    scoreboard players operation $CalcD Temporary *= $Difficulty Temporary
    execute store result storage api: Argument.Duration int 1 run scoreboard players operation $CalcC Temporary += $CalcD Temporary

# 効果時間が1.. && スタックが1..なら付与
    data modify storage api: Argument.ID set value 17
    execute if score $CalcA Temporary matches 1.. if score $CalcC Temporary matches 1.. as @a[tag=Victim,distance=..30] run function api:entity/mob/effect/give
    function api:entity/mob/effect/reset

# リセット
    scoreboard players reset $CalcA Temporary
    scoreboard players reset $CalcB Temporary
    scoreboard players reset $CalcC Temporary
    scoreboard players reset $CalcD Temporary
    scoreboard players reset $Difficulty Temporary
