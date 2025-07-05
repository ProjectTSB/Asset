#> asset:mob/0363.white_spellbook/attack/
#
# Mobの攻撃時の処理
#
# @within function asset:mob/alias/363/attack

#> Private
# @private
    #declare score_holder $Difficulty

# "363.Debuff"がなければreturn
    execute unless data storage asset:context Attack{Metadata:"363.Debuff"} run return fail

# 難易度値を取得する
    function api:global_vars/get_difficulty
    execute store result score $Difficulty Temporary run data get storage api: Return.Difficulty

# デバフを付与
# Stack = Difficulty, Duration = 50 * (Difficulty + 1)
    data modify storage api: Argument.ID set value 613
    data modify storage api: Argument.Stack set from storage api: Return.Difficulty
    execute store result storage api: Argument.Duration int 50 run scoreboard players add $Difficulty Temporary 1
    data modify storage api: Argument.FieldOverride.MobUUID set from storage asset:context this.MobUUID
    execute as @a[tag=Victim,distance=..32] run function api:entity/mob/effect/give
    function api:entity/mob/effect/reset

# リセット
    scoreboard players reset $Difficulty Temporary
