#> asset:mob/0075.leucocyte/attack/
#
# Mobの攻撃時の処理
#
# @within function asset:mob/alias/75/attack

# バニラの攻撃じゃなかったらreturn
    execute unless data storage asset:context Attack{IsVanilla:true} run return fail

# 最低難易度なら何もしない
    execute if predicate api:global_vars/difficulty/easy run return fail

# 難易度値 - 1 の被ダメージ上昇を付与する
    function api:global_vars/get_difficulty
    data modify storage api: Argument.ID set value 7
    data modify storage api: Argument.Duration set value 200
    execute store result storage api: Argument.Stack int 0.9999999999 run data get storage api: Return.Difficulty
    # data modify storage api: Argument.DurationOperation set value "replace"
    # data modify storage api: Argument.StackOperation set value "replace"
    execute as @p[tag=Victim] run function api:entity/mob/effect/give

# リセット
    function api:entity/mob/effect/reset
