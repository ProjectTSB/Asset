#> asset:mob/0152.desire/attack/release
#
#
#
# @within function asset:mob/0152.desire/attack/

# 演出
    execute at @a[tag=Victim,distance=..6,limit=1] run particle minecraft:dragon_breath ~ ~1 ~ 0.5 0.5 0.5 0.03 200
    playsound minecraft:entity.evoker.prepare_summon hostile @a ~ ~ ~ 1 2
    playsound minecraft:entity.wither.hurt hostile @a ~ ~ ~ 1 1

# ダメージ
    data modify storage api: Argument.Damage set value 41f
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "None"
    data modify storage api: Argument.DeathMessage append value '{"translate": "%1$sは%2$sにあらゆる欲を押し付けられた","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}'
    data modify storage api: Argument.DeathMessage append value '{"translate": "%1$sは%2$sに命までも吸い取られた","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}'
    function api:damage/modifier
    execute as @p[tag=Victim,distance=..6,limit=1] run function api:damage/
    function api:damage/reset

# MP回復量減少
    function api:global_vars/get_difficulty
    data modify storage api: Argument.ID set value 72
    execute store result storage api: Argument.Stack int 4 run data get storage api: Return.Difficulty 1
    data modify storage api: Argument.Duration set value 100
    execute as @a[tag=Victim,distance=..6,limit=1] run function api:entity/mob/effect/give
    function api:entity/mob/effect/reset

# タグリセット
    tag @s remove RunOnce
    tag @s remove 48.HasMP
