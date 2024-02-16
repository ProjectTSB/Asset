#> asset:mob/0152.desire/attack/4.release
#
#
#
# @within function asset:mob/0152.desire/attack/2.attack

# ダメージ
    data modify storage lib: Argument.Damage set value 55f
    data modify storage lib: Argument.AttackType set value "Magic"
    data modify storage lib: Argument.ElementType set value "None"
    data modify storage lib: Argument.DeathMessage append value '{"translate": "%1$sは%2$sにあらゆる欲を押し付けられた","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}'
    data modify storage lib: Argument.DeathMessage append value '{"translate": "%1$sは%2$sに命までも吸い取られた","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}'
    function lib:damage/modifier
    execute as @p[tag=Victim,distance=..32] run function lib:damage/
    function lib:damage/reset

# 演出
    playsound minecraft:entity.evoker.prepare_summon hostile @a ~ ~ ~ 1 2
    playsound minecraft:entity.wither.hurt hostile @a ~ ~ ~ 1 1
    execute as @p[tag=Victim,distance=..10] at @s run particle minecraft:dragon_breath ~ ~1 ~ 0.5 0.5 0.5 0.03 200

# タグリセット
    tag @s remove RunOnce
    tag @s remove 48.HasMP