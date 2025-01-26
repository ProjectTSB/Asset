#> asset:object/2060.cross_thunder/tick/thunder
#
#
#
# @within function asset:object/2060.cross_thunder/tick/

# 演出
    particle dust 1 1 0 1 ~ ~3 ~ 0.2 2 0.2 0 120
    particle minecraft:large_smoke ~ ~ ~ 0 0 0 0.4 5
    playsound entity.lightning_bolt.thunder hostile @a ~ ~ ~ 0.15 2 0
    playsound entity.lightning_bolt.impact hostile @a ~ ~ ~ 0.15 0 0
    function asset:object/2060.cross_thunder/tick/vfx2

# ダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.Damage
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "Thunder"
    data modify storage api: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sの雷に撃たれ消滅した","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
    data modify storage api: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sの稲妻に焼け落ちた","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
    data modify storage api: Argument.MobUUID set from storage asset:context this.MobUUID
    function api:damage/modifier_manual
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..1.5] run function api:damage/
    function api:damage/reset
