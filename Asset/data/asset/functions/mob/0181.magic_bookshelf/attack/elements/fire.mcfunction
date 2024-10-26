#> asset:mob/0181.magic_bookshelf/attack/elements/fire
#
# 火属性攻撃
#
# @within function
#   asset:mob/0181.magic_bookshelf/attack/random_element
#   asset:mob/0181.magic_bookshelf/attack/weakness_element

# 演出
    execute at @p[tag=Victim,distance=..6] positioned ~ ~0.2 ~ rotated ~ 0 run function asset:mob/0181.magic_bookshelf/attack/elements/vfx/fire
    execute at @p[tag=Victim,distance=..6] run particle lava ~ ~1 ~ 0.15 0.4 0.15 0 20 normal @a
    execute at @p[tag=Victim,distance=..6] run playsound entity.blaze.shoot hostile @a ~ ~ ~ 0.8 0.7 0
    execute at @p[tag=Victim,distance=..6] run playsound block.beacon.power_select hostile @a ~ ~ ~ 0.6 0.8 0

# ダメージ
    data modify storage api: Argument.Damage set value 33f
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Fire"
    data modify storage api: Argument.DeathMessage append value '{"translate": "%1$sは%2$sの炎の魔法で燃え尽きた","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"api:","interpret":true}]}'
    function api:damage/modifier
    execute as @p[tag=Victim,distance=..6] run function api:damage/
    function api:damage/reset
