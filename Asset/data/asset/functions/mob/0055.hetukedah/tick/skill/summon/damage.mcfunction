#> asset:mob/0055.hetukedah/tick/skill/summon/damage
#
# 自傷ダメージ
#
# @within function asset:mob/0055.hetukedah/tick/skill/summon/tick

# 5%の自傷割合ダメージ
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "None"
    data modify storage api: Argument.FixedDamage set value 1b
    execute store result storage api: Argument.Damage float 0.05 run function api:mob/get_max_health

# ダメージ
    execute as @p[tag=!PlayerShouldInvulnerable,distance=..128] run function api:damage/modifier
    function api:damage/

# ダメージリセット
    function api:damage/reset
