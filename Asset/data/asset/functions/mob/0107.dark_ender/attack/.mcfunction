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
    function api:damage/modifier
    execute as @p[tag=Victim,distance=..6] run function api:damage/
    function api:damage/reset

# 演出
    execute at @p[tag=Victim,distance=..6] run particle portal ~ ~1.2 ~ 1 1 1 1 60 normal @a

# 暗闇を3秒付与
    data modify storage api: Argument set value {ID:24,Duration:60}
    execute as @p[tag=Victim,distance=..6] run function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
