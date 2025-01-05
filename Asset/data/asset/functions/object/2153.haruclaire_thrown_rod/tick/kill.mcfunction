#> asset:object/2153.haruclaire_thrown_rod/tick/kill
#
# Objectのtick時の処理
#
# @within asset:object/2153.haruclaire_thrown_rod/tick/**

# ダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.Damage
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Water"
    data modify storage api: Argument.DeathMessage append value '[{"translate": "%1$sは かたいこおりに あたまをぶつけた","with":[{"selector":"@s"}]}]'
    # data modify storage api: Argument.DeathMessage append value '[{"translate": "%1$sは%2$s...","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"api:","interpret":true}]}]'
    data modify storage api: Argument.MobUUID set from storage asset:context this.MobUUID
    function api:damage/modifier_manual
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..2.5] run function api:damage/
    function api:damage/reset

# 演出
    particle firework ~ ~ ~ 0 0 0 0.5 30 force
    particle firework ~ ~ ~ 0 0 0 0.1 10 force
    playsound block.amethyst_block.break hostile @a ~ ~ ~ 2 1
    playsound block.amethyst_block.break hostile @a ~ ~ ~ 2 0.8

# 消去
    kill @s
