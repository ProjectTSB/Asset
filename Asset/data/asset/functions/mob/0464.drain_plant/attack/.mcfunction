#> asset:mob/0464.drain_plant/attack/
#
# Mobの攻撃時の処理
#
# @within function asset:mob/alias/464/attack

#> Private
# @private

# 特定のMetadataがなければreturn
    execute unless data storage asset:context Attack{Metadata:"464.DrainPlant"} run return fail

# 難易度値を取得
    function api:global_vars/get_difficulty
    execute store result score $Difficulty Temporary run data get storage api: Return.Difficulty

# MP吸収
    execute store result score $CalcA Temporary run data get storage asset:context this.MPReduce.Base
    execute store result score $CalcB Temporary run data get storage asset:context this.MPReduce.Difficulty
    scoreboard players operation $CalcB Temporary *= $Difficulty Temporary
    scoreboard players operation $CalcA Temporary += $CalcB Temporary
    execute as @a[tag=Victim,distance=..10] run function asset:mob/0464.drain_plant/attack/mp_reduce

# 毒
    execute store result score $CalcA Temporary run data get storage asset:context this.Stack.Base
    execute store result score $CalcB Temporary run data get storage asset:context this.Stack.Difficulty
    scoreboard players operation $CalcB Temporary *= $Difficulty Temporary
    execute store result storage api: Argument.Stack int 1 run scoreboard players operation $CalcA Temporary += $CalcB Temporary

    execute store result score $CalcA Temporary run data get storage asset:context this.Duration.Base
    execute store result score $CalcB Temporary run data get storage asset:context this.Duration.Difficulty
    scoreboard players operation $CalcB Temporary *= $Difficulty Temporary
    execute store result storage api: Argument.Duration int 1 run scoreboard players operation $CalcA Temporary += $CalcB Temporary

    data modify storage api: Argument.ID set value 29
    execute as @a[tag=Victim,distance=..10] run function api:entity/mob/effect/give
    function api:entity/mob/effect/reset

# リセット
    scoreboard players reset $Difficulty Temporary
    scoreboard players reset $CalcA Temporary
    scoreboard players reset $CalcB Temporary
