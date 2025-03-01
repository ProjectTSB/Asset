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

# ダメージ
# 夜の時はデスログを1パターン追加
    data modify storage api: Argument.Damage set value 10.0f
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "None"
    data modify storage api: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sによって闇に引きずり込まれた","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
    execute if predicate lib:is_night run data modify storage api: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sによって夜の闇に消えた","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
    function api:damage/modifier
    execute as @p[tag=Victim] run function api:damage/
    function api:damage/reset

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
