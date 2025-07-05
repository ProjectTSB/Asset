#> asset:object/2047.prominence_magic/tick/damage
#
# ダメージ
#
# @within function
#   asset:object/2047.prominence_magic/tick/
#   asset:object/2047.prominence_magic/tick/2nd_blast

# 演出
    particle explosion ~ ~0.6 ~ 0 0 0 0 1 normal @a
    particle flame ~ ~0.6 ~ 0 0 0 0.16 15 normal @a
    particle cloud ~ ~0.6 ~ 0 0 0 0.16 15 normal @a
    particle large_smoke ~ ~0.6 ~ 0 0 0 0.16 15 normal @a
    particle dust_color_transition 0.922 0.318 0.133 2 0.51 0.067 0.051 ~ ~0.8 ~ 0.7 0.6 0.7 0 35 normal @a
    playsound entity.generic.explode hostile @a ~ ~ ~ 0.2 0.9 0

# MobのAttackトリガー起動用Metadata
    data modify storage api: Argument.Metadata set value "369.Debuff"

# ダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.Damage
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Fire"
    data modify storage api: Argument.MobUUID set from storage asset:context this.MobUUID
    function api:damage/modifier_manual
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..1.6] run function api:damage/
    function api:damage/reset
