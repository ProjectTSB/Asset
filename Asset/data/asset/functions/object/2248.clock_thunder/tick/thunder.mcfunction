#> asset:object/2248.clock_thunder/tick/thunder
#
#
#
# @within function asset:object/2248.clock_thunder/tick/

# 演出
    particle dust 1 1 0 1 ~ ~5 ~ 0.1 5 0.1 0 100
    particle minecraft:explosion ~ ~ ~ 0.3 0 0.3 0 10
    particle minecraft:large_smoke ~ ~ ~ 0 0 0 0.4 10

    playsound entity.lightning_bolt.thunder hostile @a ~ ~ ~ 0.2 2
    playsound entity.lightning_bolt.impact hostile @a ~ ~ ~ 0.2 0.5

# ダメージ設定
    data modify storage api: Argument.Damage set from storage asset:context this.Damage
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Thunder"
    data modify storage api: Argument.DeathMessage set value '[{"translate": "%1$sは%2$sの雷により丸焦げになった","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
    data modify storage api: Argument.MobUUID set from storage asset:context this.MobUUID
    function api:damage/modifier_manual
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..2] at @s run function api:damage/
    function api:damage/reset

# キル
    kill @s
