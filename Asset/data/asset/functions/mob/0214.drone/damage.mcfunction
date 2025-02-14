#> asset:mob/0214.drone/damage
#
# 
#
# @within
#   function asset:mob/0214.drone/tick/suicide
#   function asset:mob/0214.drone/death/

# 周囲の敵と対空砲にダメージ
# particle
    particle minecraft:large_smoke ~ ~ ~ 1.2 0.8 1.2 0.1 100 normal
    particle minecraft:flame ~ ~ ~ 0.6 0.3 0.6 0.05 50 normal

# sound
    playsound entity.generic.explode hostile @a[distance=..16] ~ ~ ~ 1 1 1

# damage
    data modify storage api: Argument.Damage set value 10f
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "Fire"
    data modify storage api: Argument.DeathMessage append value '{"translate": "%1$sは%2$sの自爆ドローンによって撃破された","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}'
    data modify storage api: Argument.MobUUID set from storage asset:context this.MobUUID
    function api:damage/modifier_manual
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..3] run function api:damage/
    function api:damage/reset

# 対空砲へのダメージ
    tag @e[scores={ObjectID=2088},distance=..3] add PatriotLauncher.HitMissile
