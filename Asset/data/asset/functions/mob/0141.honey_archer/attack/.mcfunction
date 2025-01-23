#> asset:mob/0141.honey_archer/attack/
#
# Mobの攻撃時の処理
#
# @within function asset:mob/alias/141/attack

# バニラの攻撃じゃなかったら return
    execute unless data storage asset:context Attack{IsVanilla:true} run return fail

# 演出
    execute at @p[tag=Victim,distance=..32] run particle falling_honey ~ ~1.2 ~ 0.4 0.4 0.4 0 30 normal @a
    execute at @p[tag=Victim,distance=..32] run particle dust 1.000 0.741 0.141 1.3 ~ ~1.2 ~ 0.5 0.4 0.5 0 20 normal
    execute at @p[tag=Victim,distance=..32] run playsound minecraft:block.honey_block.place hostile @a ~ ~ ~ 0.7 1 0

# ダメージ
    data modify storage api: Argument.Damage set value 31.5f
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Water"
    data modify storage api: Argument.DeathMessage append value '{"translate": "%1$sは%2$sによってべとべとに射抜かれた","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}'
    data modify storage api: Argument.DeathMessage append value '{"translate": "%1$sは%2$sにハチの巣の材料にされた","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}'
    function api:damage/modifier
    execute as @p[tag=Victim,distance=..32] run function api:damage/
    function api:damage/reset

# 難易度比例のデバフ
    function api:global_vars/get_difficulty

# 移動速度低下
    data modify storage api: Argument set value {ID:17,Duration:60}
    execute store result storage api: Argument.Stack int 2 run data get storage api: Return.Difficulty
    execute as @p[tag=Victim,distance=..32] run function api:entity/mob/effect/give
    function api:entity/mob/effect/reset

# 採掘速度低下
    data modify storage api: Argument set value {ID:26,Duration:60}
    execute store result storage api: Argument.Stack int 1 run data get storage api: Return.Difficulty
    execute as @p[tag=Victim,distance=..32] run function api:entity/mob/effect/give
    function api:entity/mob/effect/reset

# 毒
    data modify storage api: Argument set value {ID:29,Duration:60}
    execute store result storage api: Argument.Stack int 2 run data get storage api: Return.Difficulty
    execute as @p[tag=Victim,distance=..32] run function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
