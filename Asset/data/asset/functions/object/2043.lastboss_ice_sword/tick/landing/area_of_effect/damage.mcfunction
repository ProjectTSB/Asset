#> asset:object/2043.lastboss_ice_sword/tick/landing/area_of_effect/damage
#
#
#
# @within function asset:object/2043.lastboss_ice_sword/tick/landing/area_of_effect/

# 魔法水ダメージ
    data modify storage api: Argument.Damage set value 50f
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Water"
    data modify storage api: Argument.MobUUID set from storage asset:context this.MobUUID
    function api:damage/modifier_manual
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..4] run function api:damage/
    function api:damage/reset

# 移動速度低下
    data modify storage api: Argument set value {ID:67,Stack:3,Duration:20}
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..4] run function api:entity/mob/effect/give
    function api:entity/mob/effect/reset

# 演出
    execute at @a[tag=!PlayerShouldInvulnerable,distance=..4] run particle block ice ~ ~1 ~ 0.2 0.5 0.2 0 10
    execute at @a[tag=!PlayerShouldInvulnerable,distance=..4] run playsound minecraft:entity.player.hurt_freeze player @p ~ ~ ~ 1 2
    execute at @a[tag=!PlayerShouldInvulnerable,distance=..4] run playsound minecraft:block.glass.break player @p ~ ~ ~ 1 2
