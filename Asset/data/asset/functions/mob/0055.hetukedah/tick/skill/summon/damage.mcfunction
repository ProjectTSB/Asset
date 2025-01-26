#> asset:mob/0055.hetukedah/tick/skill/summon/damage
#
# 自傷ダメージ
#
# @within function asset:mob/0055.hetukedah/tick/skill/summon/tick

# 5%の自傷割合ダメージ
    data modify storage lib: Argument.AttackType set value "Magic"
    data modify storage lib: Argument.ElementType set value "None"
    data modify storage lib: Argument.FixedDamage set value 1b
    execute store result storage lib: Argument.Damage float 0.05 run function api:mob/get_max_health

# ダメージ
    execute as @p[tag=!PlayerShouldInvulnerable,distance=..128] run function lib:damage/modifier
    function lib:damage/

# ダメージリセット
    function lib:damage/reset
