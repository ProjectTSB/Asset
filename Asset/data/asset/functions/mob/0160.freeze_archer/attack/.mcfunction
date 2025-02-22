#> asset:mob/0160.freeze_archer/attack/
#
# Mobの攻撃時の処理
#
# @within function asset:mob/alias/160/attack

# バニラの攻撃じゃなかったら return
    execute unless data storage asset:context Attack{IsVanilla:true} run return fail

# 演出
    execute at @p[tag=Victim,distance=..32] run particle dust 1 1000000000 1000000000 1 ~ ~1.2 ~ 0.5 0.4 0.5 1 40 normal @a
    execute at @p[tag=Victim,distance=..32] run playsound block.glass.break hostile @a ~ ~ ~ 0.7 2

# ダメージ
    data modify storage api: Argument.Damage set value 39f
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "Water"
    data modify storage api: Argument.DeathMessage append value '{"translate": "%1$sは%2$sによって氷像にされた","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}'
    data modify storage api: Argument.DeathMessage append value '{"translate": "%1$sは%2$sによって凍り付き、貫かれた","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}'
    function api:damage/modifier
    execute as @p[tag=Victim,distance=..32] run function api:damage/
    function api:damage/reset

# 移動速度低下
# Stack = Difficulty * 3 - 1
    function api:global_vars/get_difficulty
    data modify storage api: Argument set value {ID:17,Duration:60}
    execute store result storage api: Argument.Stack int 0.9999999999 run data get storage api: Return.Difficulty 3
    execute as @p[tag=Victim] run function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
