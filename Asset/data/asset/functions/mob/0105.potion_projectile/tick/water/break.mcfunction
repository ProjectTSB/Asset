#> asset:mob/0105.potion_projectile/tick/water/break
#
#
#
# @within function asset:mob/0105.potion_projectile/tick/4.element_branch

# 演出
    particle snowflake ~ ~1.2 ~ 1 0.4 1 0 50 normal @a
    particle falling_dust diamond_block ~ ~1.2 ~ 1 0.4 1 0 20 normal @a
    playsound block.glass.break hostile @a ~ ~ ~ 1 2 0
    particle end_rod ~ ~ ~ 0 0 0 0.4 200
    particle minecraft:large_smoke ~ ~ ~ 0 0 0 0.4 10

# デバフ
    effect give @a[tag=!PlayerShouldInvulnerable,distance=..3] slowness 5 2 true

# ダメージ
    data modify storage api: Argument.Damage set value 25.0
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Water"
    data modify storage api: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sの氷の薬品により氷に閉ざされた","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
    function api:damage/modifier
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..3] run function api:damage/
    function api:damage/reset

# 自身をkill
    kill @s
