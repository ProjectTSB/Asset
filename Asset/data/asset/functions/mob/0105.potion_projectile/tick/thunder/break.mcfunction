#> asset:mob/0105.potion_projectile/tick/thunder/break
#
#
#
# @within function asset:mob/0105.potion_projectile/tick/4.element_branch

# 演出
    particle dust 1 1 0 1.5 ~ ~1.2 ~ 1 0.4 1 0 30 normal @a
    particle firework ~ ~1.2 ~ 1 0.4 1 0.1 20 normal @a
    playsound entity.firework_rocket.twinkle hostile @a ~ ~ ~ 0.8 2 0
    playsound entity.firework_rocket.twinkle hostile @a ~ ~ ~ 0.8 1.5 0

    particle dust 1 1 0 1 ~ ~3 ~ 0.7 3 0.7 0 100
    particle dust 1 1 0 1 ~ ~5 ~ 0.1 5 0.1 0 100
    particle minecraft:explosion ~ ~ ~ 0.3 0 0.3 0 10
    particle minecraft:large_smoke ~ ~ ~ 0 0 0 0.4 50

    playsound entity.lightning_bolt.thunder hostile @a ~ ~ ~ 1 2
    playsound entity.lightning_bolt.thunder hostile @a ~ ~ ~ 1 2
    playsound entity.lightning_bolt.impact hostile @a ~ ~ ~ 1 0

# 雷属性ダメージ
    data modify storage api: Argument.Damage set value 18.0
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Thunder"
    data modify storage api: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sの雷の薬品により感電死した","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
    function lib:damage/modifier
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..3] run function lib:damage/
    function lib:damage/reset

# MP減少
    execute as @a[distance=..3] run function asset:mob/0105.potion_projectile/tick/thunder/mp_reduce

# キル
    kill @s
