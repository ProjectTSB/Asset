#> asset:object/2070.potion/kill/fire
#
# 火
#
# @within function asset:object/2070.potion/kill/

# 爆発演出
    particle explosion ~ ~1.2 ~ 0.6 0.4 0.6 0 10 normal @a
    particle lava ~ ~1.2 ~ 1 0.4 1 0 20 normal @a
    particle flame ~ ~1.2 ~ 0 0 0 0.3 40 normal @a
    playsound entity.generic.explode hostile @a ~ ~ ~ 0.7 1 0

# ダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.Damage
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Fire"
    data modify storage api: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sの炎の薬品により焼け焦げた","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
    data modify storage api: Argument.MobUUID set from storage asset:context this.MobUUID
    function api:damage/modifier_manual
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..3] run function api:damage/
    function api:damage/reset
