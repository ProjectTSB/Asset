#> asset:mob/0370.prominence_magic/tick/damage
#
# 1回目の爆発
#
# @within function
#   asset:mob/0370.prominence_magic/tick/3.on_ground
#   asset:mob/0370.prominence_magic/tick/5.2nd_blast

# 演出
    particle explosion ~ ~ ~ 0 0 0 0 1 normal @a
    particle flame ~ ~0.6 ~ 0 0 0 0.16 30 normal @a
    particle dust_color_transition 0.922 0.318 0.133 2 0.757 0.275 0.129 ~ ~0.8 ~ 0.7 0.6 0.7 0 35 normal @a
    playsound entity.generic.explode hostile @a ~ ~ ~ 0.2 0.9 0

# ダメージ
    data modify storage api: Argument.Damage set value 28f
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Fire"
    function api:damage/modifier
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..1.5] run function api:damage/
    function api:damage/reset

# ノーマル以上でデバフを付与
    execute if predicate api:global_vars/difficulty/min/normal run function asset:mob/0370.prominence_magic/tick/debuff
