#> asset:object/2150.haruclaire_ice_wall/tick/attack
#
# Objectのtick時の処理
#
# @within asset:object/2150.haruclaire_ice_wall/tick/

# ダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.Damage
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Water"
    data modify storage api: Argument.DeathMessage append value '[{"translate": "%1$sは こおりに つきあげられた","with":[{"selector":"@s"}]}]'
    data modify storage api: Argument.MobUUID set from storage asset:context this.MobUUID
    function api:damage/modifier_manual
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..3] run function api:damage/
    function api:damage/reset

# 演出
    particle end_rod ~ ~2 ~ 0.1 0.1 0.1 0.2 20
    particle flash ~ ~2 ~ 0 0 0 0 1
    playsound block.amethyst_block.place hostile @a ~ ~ ~ 2 0.5
    playsound block.amethyst_block.place hostile @a ~ ~ ~ 2 0.6
    playsound block.amethyst_block.break hostile @a ~ ~ ~ 2 0.6
    playsound block.amethyst_block.break hostile @a ~ ~ ~ 2 0.7
