#> asset:object/2047.prominence_magic/tick/damage
#
# ダメージ
#
# @within function
#   asset:object/2047.prominence_magic/tick/
#   asset:object/2047.prominence_magic/tick/2nd_blast

# 演出
    particle explosion ~ ~ ~ 0 0 0 0 1 normal @a
    particle flame ~ ~0.6 ~ 0 0 0 0.16 30 normal @a
    particle dust_color_transition 0.922 0.318 0.133 2 0.51 0.067 0.051 ~ ~0.8 ~ 0.7 0.6 0.7 0 35 normal @a
    playsound entity.generic.explode hostile @a ~ ~ ~ 0.2 0.9 0

# ダメージ
    data modify storage api: Argument.Damage set value 34f
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Fire"
    function api:damage/modifier
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..1.6] run function api:damage/
    function api:damage/reset

# ノーマル以上でデバフを付与
    execute if predicate api:global_vars/difficulty/min/normal as @a[tag=!PlayerShouldInvulnerable,distance=..1.6] run function asset:object/2047.prominence_magic/tick/debuff
