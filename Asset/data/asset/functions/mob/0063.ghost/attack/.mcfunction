#> asset:mob/0063.ghost/attack/
#
# Mobの攻撃時の処理
#
# @within function asset:mob/alias/63/attack

# バニラの攻撃じゃなかったら return
    execute unless data storage asset:context Attack{IsVanilla:true} run return fail

# 演出
    execute at @p[tag=Victim] run particle squid_ink ~ ~ ~ 0.3 0.3 0.3 0.4 100
    execute at @p[tag=Victim] run playsound entity.squid.death hostile @a ~ ~ ~

# ダメージ
    data modify storage api: Argument.Damage set value 2.5f
    data modify storage api: Argument.AttackType set value "Magic"
    function api:damage/modifier
    execute as @p[tag=Victim] run function api:damage/
    function api:damage/reset

# 暗闇を1秒付与
    data modify storage api: Argument set value {ID:24,Duration:20}
    execute as @p[tag=Victim] run function api:entity/mob/effect/give
    function api:entity/mob/effect/reset

# ノーマルならreturn
    execute if predicate api:global_vars/difficulty/1_normal run return 0

# ハード以上で難易度比例の鈍足を付与
# Stack = (Difficulty - 1) * 2
# 暗闇と効果時間が違うのは意図している
    function api:global_vars/get_difficulty
    data modify storage api: Argument set value {ID:17,Duration:60}
    execute store result storage api: Argument.Stack int 2 run data get storage api: Return.Difficulty 0.9999999999
    execute as @p[tag=Victim] run function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
