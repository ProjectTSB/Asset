#> asset:object/2089.cluster_munition/tick/detonate
#
# 
#
# @within function asset:object/2089.cluster_munition/tick/

# vfx
    playsound entity.firework_rocket.blast hostile @a[distance=..32] ~ ~ ~ 1 0.5 0.5
    particle explosion ~ ~ ~ 1 0.5 1 0 10 normal

# damage
    data modify storage api: Argument.Damage set value 20f
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "Fire"
    data modify storage api: Argument.DeathMessage append value '{"translate": "%1$sは%2$sの巡航ミサイルよって撃破された","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}'
    data modify storage api: Argument.MobUUID set from storage asset:context this.MobUUID
    function api:damage/modifier_manual
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..6] run function api:damage/
    function api:damage/reset

# kill @s
    kill @s
