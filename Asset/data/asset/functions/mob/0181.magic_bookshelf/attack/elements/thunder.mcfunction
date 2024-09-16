#> asset:mob/0181.magic_bookshelf/attack/elements/thunder
#
# 雷属性攻撃
#
# @within function
#   asset:mob/0181.magic_bookshelf/attack/random_element
#   asset:mob/0181.magic_bookshelf/attack/weakness_element

# 演出
    execute at @p[tag=Victim,distance=..6] positioned ~ ~0.2 ~ rotated ~ 0 run function asset:mob/0181.magic_bookshelf/attack/elements/vfx/thunder
    execute at @p[tag=Victim,distance=..6] run particle dust 1 1 0 1 ~ ~2 ~ 0.05 1.7 0.05 0 120 normal @a
    execute at @p[tag=Victim,distance=..6] run particle smoke ~ ~0.3 ~ 0.15 0.15 0.15 0.2 50 normal @a
    execute at @p[tag=Victim,distance=..6] run playsound entity.lightning_bolt.thunder hostile @a ~ ~ ~ 0.6 1.6 0
    execute at @p[tag=Victim,distance=..6] run playsound block.beacon.power_select hostile @a ~ ~ ~ 0.6 0.8 0

# ダメージ
    data modify storage api: Argument.Damage set value 33f
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Thunder"
    data modify storage api: Argument.DeathMessage append value '{"translate": "%1$sは%2$sの雷の魔法で心停止した","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}'
    function api:damage/modifier
    execute as @p[tag=Victim,distance=..6] run function api:damage/
    function api:damage/reset
