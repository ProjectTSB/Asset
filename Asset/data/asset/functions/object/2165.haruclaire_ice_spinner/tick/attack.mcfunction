#> asset:object/2165.haruclaire_ice_spinner/tick/attack
#
# Objectのtick時の処理
#
# @within asset:object/2165.haruclaire_ice_spinner/tick/

# ダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.Damage
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Water"
    data modify storage api: Argument.DeathMessage append value '[{"translate": "%1$sは かたいこおりに あたまをぶつけた","with":[{"selector":"@s"}]}]'
    data modify storage api: Argument.MobUUID set from storage asset:context this.MobUUID
    function api:damage/modifier_manual
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..2] run function api:damage/
    function api:damage/reset

# 演出
    particle firework ~ ~ ~ 0 0 0 0.5 30
    particle firework ~ ~ ~ 0 0 0 0.1 10
    playsound block.amethyst_block.break hostile @a ~ ~ ~ 2 1
    playsound block.amethyst_block.break hostile @a ~ ~ ~ 2 0.8

# 消滅
    kill @s
