#> asset:object/2152.haruclaire_icespear/tick/attack
#
# Objectのtick時の処理
#
# @within asset:object/2152.haruclaire_icespear/tick/

# ダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.Damage
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Water"
    data modify storage api: Argument.DeathMessage append value '[{"translate": "%1$sは つららに つらぬかれた","with":[{"selector":"@s"}]}]'
    data modify storage api: Argument.MobUUID set from storage asset:context this.MobUUID
    function api:damage/modifier_manual
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..2] run function api:damage/
    function api:damage/reset

# 演出
    particle dust 1 1000000000 1000000000 1 ~ ~1.2 ~ 0 1 0 1 10 normal @a
    particle dust 1 1000000000 1000000000 1 ~ ~0.6 ~ 0.1 0.5 0.1 1 10 normal @a
    particle dust 1 1000000000 1000000000 1 ~ ~0 ~ 0.4 0.25 0.4 1 10 normal @a
    playsound minecraft:block.amethyst_cluster.break hostile @a ~ ~ ~ 1 2
    playsound minecraft:block.amethyst_cluster.break hostile @a ~ ~ ~ 1 2
    playsound minecraft:block.amethyst_block.break hostile @a ~ ~ ~ 1 0
