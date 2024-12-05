#> asset:object/2079.orange/tick/boom
#
# 爆発
#
# @within function asset:object/2079.orange/tick/on_block

# 演出
    particle dust 0 1 0 1 ~ ~0.7 ~ 0.02 0.02 0.02 0 5 normal @a
    particle dust 100000000 0.7 0.25 1.2 ~ ~0.2 ~ 0.4 0.4 0.4 0 80 normal @a
    playsound entity.item.pickup hostile @a ~ ~ ~ 1 0.5 0
    playsound entity.generic.explode hostile @a ~ ~ ~ 0.1 1 0

# 効果を付与
    effect give @a[gamemode=!spectator,distance=..1.5] saturation 3 0 true

# ダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.Damage
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "Water"
    data modify storage api: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sによって橙色になった。","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
    data modify storage api: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sによってみかんを食わされ窒息した","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
    data modify storage api: Argument.MobUUID set from storage asset:context this.MobUUID
    function api:damage/modifier_manual
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..1.5] run function api:damage/
    function api:damage/reset

# 1%で蜜柑をドロップ
    execute if predicate lib:random_pass_per/1 run function asset:object/2079.orange/tick/summon_artifact

# 消滅
    kill @s
