#> asset:object/2084.snake_eye/kill/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/2084/kill
# @within asset:object/2084.snake_eye/tick/detonation_check

# hit entityとhit block両方で同じ処理書くのも冗長なのでここで書く
# plausound
    playsound entity.generic.explode hostile @a[distance=..32] ~ ~ ~ 1 0.5 1

# particle
    particle minecraft:large_smoke ~ ~ ~ 2 1 2 0.1 200 normal
    particle minecraft:flame ~ ~ ~ 1 0.6 1 0.05 100 normal

# damage
    data modify storage api: Argument.Damage set value 30f
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "Fire"
    data modify storage api: Argument.DeathMessage append value '{"translate": "%1$sは%2$sの無誘導爆弾によって撃破された","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}'
    data modify storage api: Argument.MobUUID set from storage asset:context this.MobUUID
    function api:damage/modifier_manual
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..8] run function api:damage/
    function api:damage/reset

# 対空砲へのダメージ
    tag @e[scores={ObjectID=2088},distance=..8] add PatriotLauncher.HitMissile

# 消滅
    kill @s
