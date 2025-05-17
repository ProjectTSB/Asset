#> asset:mob/0417.astro_skeleton/attack/
#
# Mobの攻撃時の処理
#
# @within function asset:mob/alias/417/attack

# バニラの攻撃じゃなかったら return
    execute unless data storage asset:context Attack{IsVanilla:true} run return fail

# 演出
    execute at @p[tag=Victim] run particle dust 0.925 0.975 0.2 1 ~ ~ ~ 0.5 1 0.5 0 30
    playsound entity.blaze.hurt hostile @a ~ ~ ~ 1 0.65

# ダメージ
    data modify storage api: Argument.Damage set value 37.0f
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "Thunder"
    data modify storage api: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sによって射抜かれた","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
    function api:damage/modifier
    execute as @p[tag=Victim] run function api:damage/
    function api:damage/reset

# ノーマルならreturn
    execute if predicate api:global_vars/difficulty/1_normal run return 0

# 耐性低下エフェクトを(難易度値 - 1)*2スタック付与
    data modify storage api: Argument set value {ID:7,Duration:200}
    function api:global_vars/get_difficulty
    execute store result storage api: Argument.Stack int 1 run data get storage api: Return.Difficulty 0.9999999999
    execute as @p[tag=Victim] run function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
