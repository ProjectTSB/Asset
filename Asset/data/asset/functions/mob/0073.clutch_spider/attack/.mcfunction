#> asset:mob/0073.clutch_spider/attack/
#
# Mobの攻撃時の処理
#
# @within function asset:mob/alias/73/attack

# バニラの攻撃じゃなかったら return
    execute unless data storage asset:context Attack{IsVanilla:true} run return fail

# 演出
    execute at @p[tag=Victim] run particle poof ~ ~ ~ 0 0 0 0.2 10 normal

# ダメージ設定
    data modify storage api: Argument.Damage set value 20.0f
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "Water"
    function api:damage/modifier
    execute as @p[tag=Victim] run function api:damage/
    function api:damage/reset

# 移動速度低下
    function api:global_vars/get_difficulty
    data modify storage api: Argument set value {ID:17,Duration:140}
    execute store result storage api: Argument.Stack int 2 run data get storage api: Return.Difficulty
    execute as @p[tag=Victim] run function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
