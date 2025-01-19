#> asset:object/2043.lastboss_ice_sword/tick/landing/area_of_effect/damage
#
#
#
# @within function asset:object/2043.lastboss_ice_sword/tick/landing/area_of_effect/

# 魔法水ダメージ
    data modify storage api: Argument.Damage set value 25f
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Water"
    data modify storage api: Argument.MobUUID set from storage asset:context this.MobUUID
    function api:damage/modifier_manual
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..4] run function api:damage/

# デバフ
    effect give @a[tag=!PlayerShouldInvulnerable,distance=..4] slowness 1 0

# 演出
    execute at @a[tag=!PlayerShouldInvulnerable,distance=..4] run particle block ice ~ ~1 ~ 0.2 0.5 0.2 0 10
    execute at @a[tag=!PlayerShouldInvulnerable,distance=..4] run playsound minecraft:entity.player.hurt_freeze player @p ~ ~ ~ 1 2
    execute at @a[tag=!PlayerShouldInvulnerable,distance=..4] run playsound minecraft:block.glass.break player @p ~ ~ ~ 1 2

# リセット
    function api:damage/reset
