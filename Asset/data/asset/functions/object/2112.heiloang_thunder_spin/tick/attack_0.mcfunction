#> asset:object/2112.heiloang_thunder_spin/tick/attack
#
# Objectのtick時の処理
#
# @within asset:object/2112.heiloang_thunder_spin/tick/

# 演出
    particle flash ^ ^ ^ 1 1 1 0 10 force
    particle end_rod ^ ^ ^ 0.5 0.5 0.5 0.05 3 force
    playsound entity.lightning_bolt.impact hostile @a ~ ~ ~ 1 0.7

# ダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.Damage
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Thunder"
    data modify storage api: Argument.MobUUID set from storage asset:context this.MobUUID
    function api:damage/modifier_manual
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..3] run function api:damage/
    function api:damage/reset
