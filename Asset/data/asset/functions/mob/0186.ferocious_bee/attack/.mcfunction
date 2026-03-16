#> asset:mob/0186.ferocious_bee/attack/
#
# Mobの攻撃時の処理
#
# @within function asset:mob/alias/186/attack

#> Private
# @private
    #declare score_holder $Difficulty

# Metadataがなければ return
    execute unless data storage asset:context Attack{Metadata:"186.Attack"} run return fail

# 難易度値取得
    function api:global_vars/get_difficulty
    execute store result score $Difficulty Temporary run data get storage api: Return.Difficulty

# 毒を付与
# Stack = (Difficulty * 2), Duration = 80(Difficulty + 1)
    data modify storage api: Argument.ID set from storage asset:context this.PoisonID
    execute store result storage api: Argument.Stack int 2 run data get storage api: Return.Difficulty
    execute store result storage api: Argument.Duration int 80 run scoreboard players add $Difficulty Temporary 1
    execute as @a[tag=Victim] run function api:entity/mob/effect/give
    function api:entity/mob/effect/reset

# リセット
    scoreboard players reset $Difficulty Temporary
