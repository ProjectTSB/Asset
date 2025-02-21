#> asset:mob/0107.dark_ender/attack/
#
# Mobの攻撃時の処理
#
# @within function asset:mob/alias/107/attack

# バニラの攻撃じゃなかったら return
    execute unless data storage asset:context Attack{IsVanilla:true} run return fail

# ダメージ
    data modify storage api: Argument.Damage set value 9.5d
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "None"
    data modify storage api: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sに闇へと連れ去られた","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
    function api:damage/modifier
    execute as @p[tag=Victim,distance=..6] run function api:damage/
    function api:damage/reset

# 演出
    execute at @p[tag=Victim,distance=..6] run particle portal ~ ~1.2 ~ 1 1 1 1 60 normal @a

# 暗闇を難易度比例で付与
# Duration = 20 * Difficulty
    function api:global_vars/get_difficulty
    data modify storage api: Argument.ID set value 24
    execute store result storage api: Argument.Duration int 20 run data get storage api: Return.Difficulty
    execute as @p[tag=Victim] run function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
