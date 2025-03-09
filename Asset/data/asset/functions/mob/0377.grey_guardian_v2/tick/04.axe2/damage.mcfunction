#> asset:mob/0377.grey_guardian_v2/tick/04.axe2/damage
#
#
#
# @within function asset:mob/0377.grey_guardian_v2/tick/04.axe2/main

# ダメージ
    data modify storage api: Argument.Damage set value 49.0f
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "None"
    function api:damage/modifier
    execute as @a[distance=..30] at @s run function asset:mob/0377.grey_guardian_v2/tick/04.axe2/damage_on_ground
    function api:damage/reset
