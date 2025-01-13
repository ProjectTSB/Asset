#> asset:mob/0152.desire/attack/4.release
#
#
#
# @within function asset:mob/0152.desire/attack/

# 演出
    execute at @p[tag=Victim,distance=..10] run particle minecraft:dragon_breath ~ ~1 ~ 0.5 0.5 0.5 0.03 200
    playsound minecraft:entity.evoker.prepare_summon hostile @a ~ ~ ~ 1 2
    playsound minecraft:entity.wither.hurt hostile @a ~ ~ ~ 1 1

# ダメージ
    data modify storage api: Argument.Damage set value 55f
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "None"
    data modify storage api: Argument.DeathMessage append value '{"translate": "%1$sは%2$sにあらゆる欲を押し付けられた","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}'
    data modify storage api: Argument.DeathMessage append value '{"translate": "%1$sは%2$sに命までも吸い取られた","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}'
    function api:damage/modifier
    execute as @p[tag=Victim,distance=..32] run function api:damage/
    function api:damage/reset

# タグリセット
    tag @s remove RunOnce
    tag @s remove 48.HasMP
