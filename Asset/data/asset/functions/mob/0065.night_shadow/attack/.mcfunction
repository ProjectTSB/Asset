#> asset:mob/0065.night_shadow/attack/
#
# Mobの攻撃時の処理
#
# @within function asset:mob/alias/65/attack

# バニラの攻撃じゃなかったら return
    execute unless data storage asset:context Attack{IsVanilla:true} run return fail

# 暗闇を4秒付与
    data modify storage api: Argument set value {ID:24,Duration:80}
    execute as @p[tag=Victim] run function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
