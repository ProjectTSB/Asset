#> asset:mob/0156.infringement/attack/
#
# Mobの攻撃時の処理
#
# @within function asset:mob/alias/156/attack

# バニラの攻撃じゃなかったら return
    execute unless data storage asset:context Attack{IsVanilla:true} run return fail

# 演出
    execute at @p[tag=Victim,distance=..6] run particle splash ~ ~1.2 ~ 0.6 0.5 0.6 0 50 normal @a
    execute at @p[tag=Victim,distance=..6] run particle dust 0.145 0.792 0.812 1.3 ~ ~1.2 ~ 0.5 0.4 0.5 1 30 normal @a
    playsound minecraft:entity.guardian.hurt hostile @a ~ ~ ~ 0.6 1 0
    playsound minecraft:entity.generic.swim hostile @a ~ ~ ~ 0.5 0.7 0
    playsound minecraft:block.glass.break hostile @a ~ ~ ~ 1.4 1.3 0

# 与えるダメージ
    data modify storage api: Argument.Damage set value 41f
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "Water"
    data modify storage api: Argument.DeathMessage append value '{"translate": "%1$sは%2$sに存在を侵害された","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}'
    data modify storage api: Argument.DeathMessage append value '{"translate": "%1$sは%2$sに生命を侵害された","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}'
    function api:damage/modifier
    execute as @p[tag=Victim,distance=..6] run function api:damage/
    function api:damage/reset

# 移動速度低下
    function api:global_vars/get_difficulty
    data modify storage api: Argument set value {ID:67,Duration:40}
    execute store result storage api: Argument.Stack int 2 run data get storage api: Return.Difficulty
    execute as @p[tag=Victim] run function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
