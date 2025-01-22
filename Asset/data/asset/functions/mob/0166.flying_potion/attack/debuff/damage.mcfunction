#> asset:mob/0166.flying_potion/attack/debuff/damage
#
# これだけダメージを与える
#
# @within function asset:mob/0166.flying_potion/attack/

# バニラのinstant_damageを再現してFixedDamageで6ダメージ
    data modify storage api: Argument.Damage set value 6f
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "None"
    data modify storage api: Argument.FixedDamage set value true
    data modify storage api: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sの魔法で殺された","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
    function api:damage/modifier
    execute as @p[tag=Victim] run function api:damage/
    function api:damage/reset
