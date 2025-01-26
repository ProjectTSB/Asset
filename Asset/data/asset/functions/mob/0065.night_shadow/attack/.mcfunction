#> asset:mob/0065.night_shadow/attack/
#
# Mobの攻撃時の処理
#
# @within function asset:mob/alias/65/attack

#> Private
# @private
    #declare score_holder $Difficulty

# バニラの攻撃じゃなかったら return
    execute unless data storage asset:context Attack{IsVanilla:true} run return fail

# 暗闇を難易度比例で付与
# Duration = 10(Difficulty + 1)
    function api:global_vars/get_difficulty
    execute store result score $Difficulty Temporary run data get storage api: Return.Difficulty
    execute store result storage api: Argument.Duration int 10 run scoreboard players add $Difficulty Temporary 1

    data modify storage api: Argument.ID set value 24
    execute as @p[tag=Victim] run function api:entity/mob/effect/give
    function api:entity/mob/effect/reset

# リセット
    scoreboard players reset $Difficulty Temporary
