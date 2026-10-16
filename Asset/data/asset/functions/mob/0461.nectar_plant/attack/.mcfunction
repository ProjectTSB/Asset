#> asset:mob/0461.nectar_plant/attack/
#
# Mobの攻撃時の処理
#
# @within function asset:mob/alias/461/attack

#> Private
# @private
    #declare score_holder $CalcA
    #declare score_holder $CalcB
    #declare score_holder $Difficulty

# 特定のMetadataがなければreturn
    execute unless data storage asset:context Attack{Metadata:"461.NectarPlant"} run return fail

# 難易度値取得
    function api:global_vars/get_difficulty
    execute store result score $Difficulty Temporary run data get storage api: Return.Difficulty

# 被回復量デバフを付与
    execute store result score $CalcA Temporary run data get storage asset:context this.Stack.Base
    execute store result score $CalcB Temporary run data get storage asset:context this.Stack.Difficulty
    scoreboard players operation $CalcB Temporary *= $Difficulty Temporary
    execute store result storage api: Argument.Stack int 1 run scoreboard players operation $CalcA Temporary += $CalcB Temporary

    execute store result score $CalcA Temporary run data get storage asset:context this.Duration.Base
    execute store result score $CalcB Temporary run data get storage asset:context this.Duration.Difficulty
    scoreboard players operation $CalcB Temporary *= $Difficulty Temporary
    execute store result storage api: Argument.Duration int 1 run scoreboard players operation $CalcA Temporary += $CalcB Temporary

    data modify storage api: Argument.ID set value 64
    execute as @a[tag=Victim,distance=..32] run function api:entity/mob/effect/give
    function api:entity/mob/effect/reset

# リセット
    scoreboard players reset $CalcA Temporary
    scoreboard players reset $CalcB Temporary
    scoreboard players reset $Difficulty Temporary
