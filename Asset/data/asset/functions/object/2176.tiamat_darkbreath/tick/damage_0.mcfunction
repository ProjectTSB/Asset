#> asset:object/2176.tiamat_darkbreath/tick/damage_0
#
# Objectのtick時の処理
#
# @within asset:object/2176.tiamat_darkbreath/tick/

# ダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.Damage
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Water"
    data modify storage api: Argument.MobUUID set from storage asset:context this.MobUUID
    function api:damage/modifier_manual
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..6] run function api:damage/
    function api:damage/reset

# 演出
    playsound block.glass.break hostile @a ~ ~ ~ 2 0.7
    particle block ice ~ ~1 ~ 2 2 2 0 20 force
    particle cloud ~ ~1 ~ 0.1 0.1 0.1 0.2 30
    particle end_rod ~ ~1 ~ 0.1 0.1 0.1 0.2 10
    data modify storage api: Argument.ID set value 2175
    execute positioned ~ ~ ~ run function api:object/summon
